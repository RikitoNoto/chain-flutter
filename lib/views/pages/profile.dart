import 'package:auto_route/auto_route.dart';
import 'package:chain/views/molecules/circular_image.dart';
import 'package:chain/views/molecules/knowledge_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:chain/controllers/profile_controller.dart';

@RoutePage()
class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(jobFutureProvider(jobId)).when();
    return ref.watch(fetchProfileProvider).when(
          data: (user) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                user.name ?? "",
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.white,
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
                              label: "フォロー", count: user.follow),
                          _FollowFollowerButton(
                              label: "フォロータグ", count: user.follower),
                          _FollowFollowerButton(
                              label: "フォロワー", count: user.followTag),
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
                        const TabBar(
                          tabs: [
                            Tab(
                              height: 30,
                              child: Text(
                                '投稿',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Tab(
                              height: 30,
                              child: Text(
                                'お気に入り',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                            child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFF1F1F1),
                          ),
                          child: const TabBarView(
                            children: [
                              Center(
                                child: KnowledgeCard(),
                              ),
                              Center(child: Text('Search Content')),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => const Center(
            child: Text('通信に失敗しました。'),
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
