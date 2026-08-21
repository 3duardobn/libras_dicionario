import 'package:flutter/material.dart';

import '../card.dart';
import '../state.dart' as st;
import '../strings.dart' as s;

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(s.favoritesTitle)),
      body: ListenableBuilder(
        listenable: st.appState,
        builder: (context, _) {
          final favorites = st.appState.favorites;
          if (favorites.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border, size: 64, color: Colors.grey.shade400),
                    const SizedBox(height: 16),
                    Text(
                      s.favoritesEmpty,
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) =>
                DictionaryItemCard(item: favorites[index]),
          );
        },
      ),
    );
  }
}
