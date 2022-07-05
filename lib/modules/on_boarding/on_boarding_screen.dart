// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasks/modules/registeration_screen/registration_screen.dart';
import 'package:tasks/shared/components/components.dart';
import 'package:tasks/shared/components/components/default_text_button.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController boardingController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/Messenger-cuate.png',
      title: 'Get food delivery to your doorstep asap',
      body:
          'We have young and professional team that will bring your food as soon as possible to your doorstep',
    ),
    BoardingModel(
      image: 'assets/images/In-no-time.png',
      title: 'Buy Any Food from your favorite restaurant',
      body:
          'We are constantly adding your favorite restaurants throughout the territory and around your area carefully selected',
    ),
    BoardingModel(
      image: 'assets/images/In-no-time.png',
      title: 'Buy Any Food from your favorite restaurant',
      body:
          'We are constantly adding your favorite restaurants throughout the territory and around your area carefully selected',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DefaultTextButton(
            text: 'Skip',
            onPressed: (){},
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/images/fastFood1.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                height: 415.0,
                width: double.infinity,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: boardingController,
                  itemBuilder: (context, index) => buildBoardeingItem(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SmoothPageIndicator(
                controller: boardingController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.teal,
                  dotWidth: 10.0,
                  spacing: 5,
                  dotHeight: 10,
                  expansionFactor: 3,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.teal,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
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
                      navigateTo(context, const RegisterScreen(),);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBoardeingItem(BoardingModel model) => Column(
    children: [
      Image(
        width: double.infinity,
        height: 250.0,
        image: AssetImage(
          '${model.image}',
        ),
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(
        '${model.title}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23.0,
          height: 1.3,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        '${model.body}',
        style: Theme.of(context).textTheme.caption?.copyWith(
          fontSize: 15.0,
          height: 1.3,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    ],
  );
}


