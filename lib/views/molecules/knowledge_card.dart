import 'package:flutter/material.dart';

class KnowledgeCard extends StatelessWidget {
  const KnowledgeCard({
    this.title = "",
    required this.content,
    required this.favoriteCount,
    this.tags = const [],
    super.key,
  });

  final String title;
  final String content;
  final int favoriteCount;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),
                Text(
                  content,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Wrap(
                  children: tags
                      .map(
                        (tag) => Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Chip(
                            label: Text(
                              tag,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                Row(
                  children: [
                    const Icon(Icons.star_border),
                    Text(favoriteCount.toString()),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
