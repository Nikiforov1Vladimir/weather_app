import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {

  final String hint;

  const SearchTextField({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: MediaQuery.of(context).size.width * 0.7,

      child: TextField(
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        decoration: TextFieldDecoration(hint),
      ),
    );
  }
}

InputDecoration TextFieldDecoration(String hint){
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color(0x80FFFFFF),
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.white, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10.0),
      ),

      floatingLabelStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16
      ),

      hintText: hint,
      hintStyle: TextStyle(
        color: Colors.white38,
      ),

      focusColor: Colors.white,
      filled: true,
      fillColor: const Color(0x339D7979)
  );
}
