import 'package:firebaseauth/view/widget/size.dart';
import 'package:firebaseauth/view/widget/text_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromARGB(255, 49, 137, 182),
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'P K Chat',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'User Login',
                      style: TextStyle(fontSize: 36, color: txtclr1),
                    ),
                    kHight,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('User name'),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    kHight,
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Password'),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                    kHight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Register'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        ),
                      ],
                    ),
                    Container(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                      ),
                    ),
                    kHight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: (kWidth / 2) - 40,
                          child: const Divider(),
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(color: txtclr1),
                        ),
                        SizedBox(
                          width: (kWidth / 2) - 40,
                          child: const Divider(),
                        ),
                      ],
                    ),
                    kHight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: kWidth / 2 - 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  SvgPicture.asset('asset/google.svg'),
                                  // kHight,
                                  const Text('Sign in with Google'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: kWidth / 2 - 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'asset/apple.svg',
                                    color: txtclr1,
                                  ),
                                  // kHight,
                                  const Text('Sign in with Apple'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
