import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/core/utils/helper_widgets.dart';
import 'package:weather/ui/pages/forecast_page/forecast_page.dart';
import 'package:weather/ui/widgets/rounded_container.dart';

class HomePage extends StatefulWidget {
  const HomePage(BuildContext context, String text, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String timeRn = DateFormat.MMMMd('en_Us').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new),
            splashRadius: 20
        ),
        actions: [
          IconButton(
            splashRadius: 20,
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForecastPage())),
              icon: Image.asset(
                'assets/icons/forecast.png',color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.06,
              )
          )
        ],
      ),
      body: Padding(

        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.01,
        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text('Saint-Petersburg',style: Theme.of(context).textTheme.headline2),

            addVerticalSpace(MediaQuery.of(context).size.height * 0.01),

            Text(timeRn,style: Theme.of(context).textTheme.headline1),

            addVerticalSpace(MediaQuery.of(context).size.height * 0.1),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                RoundedContainer(
                  icon: 'assets/icons/temperature.png',
                  title: 'Temperature',
                  displayedValue: '22 c',
                ),
                RoundedContainer(
                  icon: 'assets/icons/humidity_second_variant.png',
                  title: 'Humidity',
                  displayedValue: '60%',
                ),
              ],
            ),

            addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                RoundedContainer(
                  icon: 'assets/icons/pressure-gauge.png',
                  title: 'Pressure',
                  displayedValue: '1013',
                ),
                RoundedContainer(
                  icon: 'assets/icons/storm.png',
                  title: 'Wind speed',
                  displayedValue: '10 m/s',
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
