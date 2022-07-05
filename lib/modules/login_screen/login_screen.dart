import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tasks/modules/registeration_screen/registration_screen.dart';
import 'package:tasks/shared/components/components.dart';
import 'package:tasks/shared/components/components/defaultButton.dart';
import 'package:tasks/shared/components/components/defaultFormField.dart';
import 'package:tasks/shared/components/components/default_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/pattern.png',
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Help',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.help,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Phone number',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  IntlPhoneField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'EG',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DefaultButton(
                    onPressed: () {},
                    text: 'Sign in',
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Or',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0,),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            width: 20.0,
                            height: 20.0,
                            image: AssetImage(
                              'assets/images/google-brands.png',
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Sign in with google',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      DefaultTextButton(
                        text: 'Sign Up',
                        onPressed: (){
                          navigateTo(context, RegisterScreen(),);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Use the application according to policy rules. Any \n kind of violations will subject to sanctions.',
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
