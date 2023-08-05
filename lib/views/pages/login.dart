import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/i18n/strings.g.dart';
import 'package:chain/views/molecules/borderless_text_field.dart';
import 'package:chain/controllers/login_controller.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

final errorMessageProvider = StateProvider<String>((ref) => "");
final passwordVisibleProvider = StateProvider<bool>((ref) => false);

@RoutePage()
class LoginPage extends ConsumerWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double contentWidth = MediaQuery.of(context).size.width * 0.7;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Center(
          child: FormBuilder(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                width: contentWidth / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset('assets/icons/app_icon.png'),
                ),
              ),
              _buildTextField(
                name: "email",
                contentWidth: contentWidth,
                labelText: t.login.email,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
              _buildTextField(
                name: "password",
                contentWidth: contentWidth,
                labelText: t.login.password,
                obscureText: !ref.watch(passwordVisibleProvider),
                suffixIcon: IconButton(
                  splashRadius: 0.1,
                  onPressed: () => ref
                      .read(passwordVisibleProvider.notifier)
                      .state = !ref.watch(passwordVisibleProvider),
                  icon: Icon(ref.watch(passwordVisibleProvider)
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              Text(
                ref.watch(errorMessageProvider),
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: contentWidth,
                child: ElevatedButton(
                  onPressed: () async {
                    ref.read(errorMessageProvider.notifier).state = "";
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      final result = await ref
                          .read(loginControllerProvider)
                          .login(_formKey.currentState?.value['email'],
                              _formKey.currentState?.value['password']);
                      if (result == LoginResult.invalidUser) {
                        ref.read(errorMessageProvider.notifier).state =
                            t.login.fail;
                      }
                    }
                  },
                  child: Text(
                    t.login.login,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required double contentWidth,
      required String labelText,
      required String name,
      bool obscureText = false,
      Widget? suffixIcon,
      String? Function(String?)? validator}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: BorderlessFormTextField(
        name: name,
        validator: validator,
        labelText: labelText,
        labelFontSize: 12,
        borderRadius: 10.0,
        width: contentWidth,
        height: 50,
        obscureText: obscureText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
