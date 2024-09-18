import 'package:doe/features/auth/ui/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/icon_app.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07),
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
          ),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text("Or with email"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
              ),
              child: const CustomTextFormField(
                hintText: "Your email",
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
              ),
              child: const CustomTextFormField(
                hintText: "Your password",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
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
          Expanded(
            flex: 2,
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
    );
  }
}
