import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/core/utils/helper_widgets.dart';
import 'package:weather/ui/pages/home_page/home_page.dart';
import 'package:weather/ui/widgets/app_material_button.dart';
import 'package:weather/ui/widgets/search_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override

  final TextEditingController _textController = TextEditingController();

  bool selected = false;

  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

      body: Form(
        child: SafeArea(
          child: SizedBox(

            width: double.infinity,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

                Text('Weather app',style: Theme.of(context).textTheme.headline1,),

                Lottie.asset(
                    'assets/lotties/geo_lottie.json',
                    repeat: false,
                    height: MediaQuery.of(context).size.height * 0.3
                ),

                SearchTextField(
                  hint: 'Enter city name',
                  controller: _textController,
                ),

                addVerticalSpace(MediaQuery.of(context).size.height * 0.05),

                AppMaterialButton(
                    text: 'Confirm',
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomePage(context, _textController.text)))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
