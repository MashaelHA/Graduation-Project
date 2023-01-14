// @dart=2.9
import 'package:flutter/material.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'constants.dart';
// ignore: unused_import
import 'package:flutter_localizations/flutter_localizations.dart';
import './Screens/signup_screen.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'project visitor to eastrn',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'biotif',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: const TextStyle(
                  // color: kPrimaryLightColor,
                  fontSize: 20,
                  fontFamily: 'biotif',
                  fontWeight: FontWeight.bold,
                ),
                headline6: const TextStyle(
                  color: Color(0xFF1F80BD),
                  fontSize: 20,
                  fontFamily: 'biotif',
                  fontWeight: FontWeight.bold,
                ),
                headline4: const TextStyle(
                  color: Color(0xFF8CC53B),
                  fontSize: 20,
                  fontFamily: 'biotif',
                  fontWeight: FontWeight.bold,
                ),
              ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              // ignore: deprecated_member_use
              primary: kPrimaryLightColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryColor,
            // iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            // textDirection: TextDecoration.LTR,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              // borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      home: WelcomeScreen(),

      initialRoute: '/',
      routes: {
        // '/': (ctx) => Tabs(_favoriteMeals),
        // signupScreen.routeName: (ctx) => SignUp(),
        // MealDetail.routeName: (ctx) =>
        //     MealDetail(_toggleFavorit, _isMealFavorite),
      }, // pushNamed
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => WelcomeScreen());
      },
    );
  }
}
