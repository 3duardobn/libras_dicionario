// Copyright (C) 2026 Eduardo Barroso Nunes
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';

import 'models.dart';
import 'state.dart' as st;
import 'strings.dart' as s;
import 'theme.dart';

/// Abre o seletor de cor de pasta; retorna o valor ARGB escolhido
/// ou o atual se o usuário cancelar.
Future<int> pickFolderColor(
  BuildContext context, {
  required int current,
}) async {
  return await showModalBottomSheet<int>(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.folderColorLabel,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      for (final color in AppColors.folderColors)
                        GestureDetector(
                          onTap: () => Navigator.pop(context, color.toARGB32()),
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: color,
                              shape: BoxShape.circle,
                              border: color.toARGB32() == current
                                  ? Border.all(
                                      color:
                                          Theme.of(context).colorScheme.onSurface,
                                      width: 3,
                                    )
                                  : Border.all(
                                      color: Colors.black.withValues(alpha: 0.1),
                                    ),
                            ),
                            child: color.toARGB32() == current
                                ? const Icon(Icons.check,
                                    color: Colors.white, size: 22)
                                : null,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ) ??
      current;
}

/// Diálogo para criar uma pasta. Retorna a [Folder] criada ou null se
/// cancelado.
Future<Folder?> showCreateFolderDialog(
  BuildContext context, {
  Folder? edit,
}) async {
  final controller = TextEditingController(text: edit?.name ?? '');
  var selectedColor = edit?.colorValue ?? AppColors.folderColors.first.toARGB32();

  return showDialog<Folder?>(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(edit == null ? s.newFolder : s.rename),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: controller,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: s.folderNameLabel,
                    hintText: s.folderNameHint,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  s.folderColorLabel,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (final color in AppColors.folderColors)
                      GestureDetector(
                        onTap: () =>
                            setState(() => selectedColor = color.toARGB32()),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: color.toARGB32() == selectedColor
                                ? Border.all(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    width: 3,
                                  )
                                : Border.all(
                                    color:
                                        Colors.black.withValues(alpha: 0.1),
                                  ),
                          ),
                          child: color.toARGB32() == selectedColor
                              ? const Icon(Icons.check,
                                  color: Colors.white, size: 18)
                              : null,
                        ),
                      ),
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(s.cancel),
              ),
              ElevatedButton(
                onPressed: () {
                  final name = controller.text.trim();
                  if (name.isEmpty) return;
                  Navigator.pop(
                    context,
                    Folder(
                      id: edit?.id ?? '',
                      name: name,
                      colorValue: selectedColor,
                      items: edit?.items ?? [],
                    ),
                  );
                },
                child: Text(edit == null ? s.create : s.save),
              ),
            ],
          );
        },
      );
    },
  );
}

/// Bottom sheet: lista as pastas para salvar/remover um sinal, com atalho
/// para criar uma pasta nova.
Future<void> showSaveToFolderSheet(
  BuildContext context,
  DictItem item,
) async {
  await showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (sheetContext) {
      return ListenableBuilder(
        listenable: st.appState,
        builder: (context, _) {
          final folders = st.appState.folders;
          final containing =
              st.appState.foldersContaining(item).map((f) => f.id).toSet();
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: MediaQuery.of(sheetContext).viewInsets.bottom + 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.folder_outlined),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          s.saveToFolder,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (folders.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        s.favoritesEmpty,
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant,
                        ),
                      ),
                    ),
                  for (final folder in folders)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.folder,
                        color: Color(folder.colorValue),
                      ),
                      title: Text(
                        folder.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: containing.contains(folder.id)
                          ? Icon(
                              Icons.check_circle,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      onTap: () async {
                        final navigator = Navigator.of(sheetContext);
                        if (containing.contains(folder.id)) {
                          await st.appState.removeFromAllFolders(item);
                        } else {
                          await st.appState.addToFolder(folder.id, item);
                        }
                        navigator.pop();
                      },
                    ),
                  const SizedBox(height: 8),
                  TextButton.icon(
                    onPressed: () async {
                      final folder = await showCreateFolderDialog(context);
                      if (folder != null) {
                        final id = await st.appState
                            .createFolder(folder.name, folder.colorValue);
                        await st.appState.addToFolder(id, item);
                      }
                    },
                    icon: const Icon(Icons.create_new_folder_outlined),
                    label: const Text(s.newFolder),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}