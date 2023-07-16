

import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({
    key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          SizedBox(
            width: 30,
            child: Image.asset('assets/icons/app_logo.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Chain",
              style: TextStyle(
                color: Color(0xFFFA8072),
              ),
            ),
          ),

        ],
      ),

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
