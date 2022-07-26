import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/core/constants/colors.dart';
import 'package:weather/core/theme/theme_class.dart';
import 'package:weather/ui/pages/search_page/search_page.dart';
import 'package:weather/ui/widgets/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: mainColor
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const SearchPage(),
    );
  }
}
