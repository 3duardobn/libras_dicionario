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

import '../card.dart';
import '../folder_ui.dart';
import '../models.dart';
import '../state.dart' as st;
import '../strings.dart' as s;
import '../theme.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  Future<void> _createFolder(BuildContext context) async {
    final folder = await showCreateFolderDialog(context);
    if (folder == null) return;
    await st.appState.createFolder(folder.name, folder.colorValue);
  }

  Future<void> _editFolder(BuildContext context, Folder folder) async {
    final result = await showCreateFolderDialog(context, edit: folder);
    if (result == null) return;
    st.appState.renameFolder(folder.id, result.name);
    st.appState.setFolderColor(folder.id, result.colorValue);
  }

  Future<void> _deleteFolder(BuildContext context, Folder folder) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(s.delete),
        content: Text('${s.deleteFolderConfirm}\n\n${folder.name}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text(s.cancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text(s.delete),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      st.appState.deleteFolder(folder.id);
    }
  }

  void _openFolder(BuildContext context, Folder folder) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => FolderDetailScreen(folderId: folder.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(s.favoritesTitle)),
      body: ListenableBuilder(
        listenable: st.appState,
        builder: (context, _) {
          final folders = st.appState.folders;
          if (folders.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder_outlined,
                      size: 64,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      s.favoritesEmpty,
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: folders.length,
            itemBuilder: (context, index) {
              final folder = folders[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                elevation: 0,
                color: Theme.of(context)
                    .colorScheme
                    .surfaceContainerHighest
                    .withValues(alpha: 0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.card),
                ),
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  onTap: () => _openFolder(context, folder),
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(folder.colorValue).withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.folder,
                      color: Color(folder.colorValue),
                    ),
                  ),
                  title: Text(
                    folder.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    '${folder.items.length} '
                    '${folder.items.length == 1 ? s.savedOne : s.savedMany}',
                  ),
                  trailing: PopupMenuButton<String>(
                    onSelected: (value) {
                      switch (value) {
                        case 'open':
                          _openFolder(context, folder);
                        case 'edit':
                          _editFolder(context, folder);
                        case 'delete':
                          _deleteFolder(context, folder);
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'open',
                        child: Text(s.openFolder),
                      ),
                      const PopupMenuItem(
                        value: 'edit',
                        child: Text(s.rename),
                      ),
                      const PopupMenuItem(
                        value: 'delete',
                        child: Text(s.delete),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _createFolder(context),
        icon: const Icon(Icons.create_new_folder_outlined),
        label: const Text(s.newFolder),
      ),
    );
  }
}

/// Conteúdo de uma pasta: sinais salvos, com ações de mover e remover.
class FolderDetailScreen extends StatelessWidget {
  const FolderDetailScreen({super.key, required this.folderId});

  final String folderId;

  Future<void> _moveItem(BuildContext context, DictItem item) async {
    final folders = st.appState.folders
        .where((f) => f.id != folderId)
        .toList();
    if (folders.isEmpty) return;
    final target = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                s.moveToFolder,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            for (final folder in folders)
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16),
                leading: Icon(
                  Icons.folder,
                  color: Color(folder.colorValue),
                ),
                title: Text(
                  folder.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => Navigator.pop(context, folder.id),
              ),
          ],
        ),
      ),
    );
    if (target == null) return;
    await st.appState.removeFromAllFolders(item);
    await st.appState.addToFolder(target, item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(s.favoritesTitle)),
      body: ListenableBuilder(
        listenable: st.appState,
        builder: (context, _) {
          final folder = st.appState.folderById(folderId);
          if (folder == null) {
            return const SizedBox.shrink();
          }
          if (folder.items.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder_open,
                      size: 64,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      s.folderEmpty,
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: folder.items.length,
            itemBuilder: (context, index) {
              final item = folder.items[index];
              return DictionaryItemCard(
                item: item,
                folderId: folder.id,
                onRemoveFromFolder: () async {
                  await st.appState.removeFromAllFolders(item);
                },
                onMoveToFolder: () => _moveItem(context, item),
              );
            },
          );
        },
      ),
    );
  }
}