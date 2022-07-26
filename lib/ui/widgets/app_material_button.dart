import 'package:flutter/material.dart';

class AppMaterialButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const AppMaterialButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      mouseCursor: SystemMouseCursors.click,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),

      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.018,
          horizontal: MediaQuery.of(context).size.width * 0.1
      ),

      onPressed: onPressed,

      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
