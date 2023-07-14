import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain_flutter/views/molecules/borderless_text_field.dart';
import 'package:chain_flutter/controllers/login_controller.dart';

@RoutePage()
class LoginPage extends ConsumerWidget  {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double contentWidth = MediaQuery.of(context).size.width * 0.7;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFAF0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                width: contentWidth / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset('assets/images/chain_icon.png'),
                ),
              ),
              _buildTextField(contentWidth: contentWidth, labelText: "メールアドレス"),
              _buildTextField(contentWidth: contentWidth, labelText: "パスワード"),
              SizedBox(
                width: contentWidth,
                child: ElevatedButton(
                  onPressed: ()=> ref.read(loginControllerProvider).login("", ""),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: const Color(0xFFFA8072),
                    shadowColor: const Color(0x00000000), // 透明
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text(
                    "ログイン",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required double contentWidth, required String labelText}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: BorderlessTextField(
        labelText: labelText,
        labelFontSize: 12,
        borderRadius: 10.0,
        fillColor: Colors.white,
        width: contentWidth,
        height: 50,
      ),
    );
  }
}
