import 'package:auto_route/auto_route.dart';
import 'package:chain/views/molecules/circular_image.dart';
import 'package:chain/views/molecules/knowledge_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:chain/i18n/strings.g.dart';
import 'package:chain/controllers/profile_controller.dart';

@RoutePage()
class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchProfileProvider).when(
          data: (user) => Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Text(
                user.name ?? "",
                style: const TextStyle(),
              ),
            ),
            body: Column(
              children: [
                //profile pain
                Column(
                  children: [
                    // profile
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircularImage(
                            height: 60,
                            path: user.thumbnail,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: 70,
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              user.description ?? "",
                              overflow: TextOverflow.fade,
                              maxLines: 7,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // follows, followers
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _FollowFollowerButton(
                              label: t.profile.follow, count: user.follow),
                          _FollowFollowerButton(
                              label: t.profile.followTag, count: user.follower),
                          _FollowFollowerButton(
                              label: t.profile.follower, count: user.followTag),
                        ],
                      ),
                    ),
                  ],
                ),
                // post, favorite pain
                DefaultTabController(
                  length: 2, // タブの数
                  child: Flexible(
                    child: Column(
                      children: [
                        TabBar(
                          tabs: [
                            Tab(
                              height: 30,
                              child: Text(
                                t.profile.post,
                              ),
                            ),
                            Tab(
                              height: 30,
                              child: Text(
                                t.profile.favorite,
                              ),
                            ),
                          ],
                        ),
                        const Flexible(
                          child: TabBarView(
                            children: [
                              Center(
                                child: KnowledgeCard(
                                  title: "title",
                                  content: "contentcontent\ncontentconten",
                                  favoriteCount: 1000,
                                  tags: [
                                    "Python",
                                    "標準出力",
                                  ],
                                ),
                              ),
                              Center(child: Text('Search Content')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(
            child: Text(t.profile.fail.connect),
          ),
        );
  }
}

class _FollowFollowerButton extends StatelessWidget {
  const _FollowFollowerButton({
    required this.label,
    required this.count,
  });

  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          Text(count.toString()),
        ],
      ),
    );
  }
}
