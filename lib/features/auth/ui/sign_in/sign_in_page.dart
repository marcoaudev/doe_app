import 'package:doe/features/auth/domain/entity/user_entity.dart';
import 'package:doe/features/auth/ui/sign_in/sign_in_store.dart';
import 'package:doe/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final formKey = GlobalKey<FormState>();
  FormState get form => formKey.currentState!;

  final user = UserEntity.empty();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenSize * 0.1),
                child: Center(
                  child: Image.asset(
                    "assets/icon_app.png",
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Container(
                height: screenSize * 0.2,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 22,
                              child: Image.asset("assets/icon_google.png"),
                            ),
                            const Text(
                              "With Google",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/icon_facebook.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/icon_github.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize * 0.05,
                child: const Text("Or with email"),
              ),
              Container(
                height: screenSize * 0.1,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07,
                ),
                child: CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (p0) => user.email.validate(),
                  onChanged: user.setEmail,
                  hintText: "Your email",
                ),
              ),
              Container(
                height: screenSize * 0.1,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07,
                ),
                child: CustomTextFormField(
                  validator: (p0) => user.password.validate(),
                  onChanged: user.setPassword,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "Your password",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final valid = form.validate();
                  if (valid) {
                    Modular.get<SignInStore>().signIn(
                      email: user.email,
                      password: user.password,
                    );
                  }
                },
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: const Center(
                    child: Text(
                      "Sing In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New User? "),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Sing up"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
