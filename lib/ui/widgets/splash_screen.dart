import 'package:flutter/material.dart';
import 'package:weather/core/utils/helper_widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text('Weather App',style: Theme.of(context).textTheme.headline1),

            addVerticalSpace(MediaQuery.of(context).size.height * 0.05),

            const CircularProgressIndicator(color: Colors.white)

          ],
        ),
      )
    );
  }
}
