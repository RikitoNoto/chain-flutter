import 'package:flutter/material.dart';

class KnowledgeCard extends StatelessWidget {
  const KnowledgeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title",
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),
                Text(
                  "contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontent",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Chip(
                        label: Text("Python"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Chip(
                        label: Text("標準出力"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star_border),
                    Text("1199"),
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
