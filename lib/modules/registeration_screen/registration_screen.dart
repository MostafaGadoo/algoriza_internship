import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tasks/modules/login_screen/login_screen.dart';
import 'package:tasks/shared/components/components.dart';
import 'package:tasks/shared/components/components/defaultButton.dart';
import 'package:tasks/shared/components/components/defaultFormField.dart';
import 'package:tasks/shared/components/components/default_text_button.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  const RegisterScreen({
    Key? key,
    this.emailController,
    this.passwordController,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
            fit: BoxFit.fill,
          )),
        ),
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
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
                    'Register',
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
                'Email',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              DefaultFormField(
                controller: emailController,
                keyBoardType: TextInputType.emailAddress,
                hintText: 'Eg. example@emial.com',
                validate: 'Email must not be empty',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Phone Number',
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
                height: 10.0,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              DefaultFormField(
                validate: 'Password must not be empty',
                controller: passwordController,
                keyBoardType: TextInputType.visiblePassword,
                isPassword: true,
                hintText: 'Password',
                suffix: Icons.remove_red_eye,
                ),
              const SizedBox(
                height: 20.0,
              ),
              DefaultButton(
                onPressed: (){},
                text: 'Register',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Has any account?',
                  ),
                  DefaultTextButton(
                    onPressed: (){
                      navigateTo(context, const LoginScreen(),);
                    },
                    text: 'Sign in here',
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
                    'By registering your account, you agree to our',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                      height: 1.0,
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultTextButton(
                    onPressed: (){},
                    text: 'terms and conditions',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        const SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
}
