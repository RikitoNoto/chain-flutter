import 'package:auto_route/auto_route.dart';
import 'package:chain/views/molecules/circular_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget {
  const UserProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "User1",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          // profile pain
          Column(
            children: [
              // profile
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: CircularImage(
                      height: 60,
                      path:
                          "https://i0.wp.com/goodpatch.com/blog/wp-content/uploads/2013/12/octocat.png?ssl=1",
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "hello, i'm octocat.\n"
                        "I'm very cute and famous.\n"
                        "You will love me soon,\n"
                        "because i'm very very very very very very very very very very very very very very very very very very very very very very cute.\n"
                        "hehehe.\n",
                        overflow: TextOverflow.fade,
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
                    _buildFollowFollowerButton(label: "フォロー", count: 1000),
                    _buildFollowFollowerButton(label: "フォロータグ", count: 10000),
                    _buildFollowFollowerButton(label: "フォロワー", count: 1000),
                  ],
                ),
              ),
            ],
          ),
          // post, favorite pain
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFollowFollowerButton({
    required String label,
    int count = 0,
  }) {
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
