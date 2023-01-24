// @dart=2.9
import 'package:flutter/material.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'constants.dart';
// ignore: unused_import
import 'package:flutter_localizations/flutter_localizations.dart';
// import './Screens/signup_screen.dart';
import 'Screens/places/places_screens.dart';

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
          fontFamily: 'Fontspring-DEMO-biotif',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: const TextStyle(
                  // color: kPrimaryLightColor,
                  fontSize: 20,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontWeight: FontWeight.bold,
                ),
                headline6: const TextStyle(
                  color: SecondaryBlue,
                  fontSize: 20,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontWeight: FontWeight.bold,
                ),
                headline4: const TextStyle(
                  color: SecondaryGreen,
                  fontSize: 20,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontWeight: FontWeight.bold,
                ),
                headline3: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontWeight: FontWeight.w500,
                ),
                headline2: const TextStyle(
                  color: kTittileColor,
                  fontSize: 20,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontWeight: FontWeight.w200,
                ),
                headline1: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontWeight: FontWeight.w200,
                ),
                headlineLarge: const TextStyle(
                  color: kTittileColor,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontSize: 24,
                ),
                subtitle1: const TextStyle(
                  color: kTittileColor,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontSize: 20,
                  fontWeight: FontWeight.w200
                ),
                subtitle2: const TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  fontSize: 24,
                  fontWeight: FontWeight.w900
                ),
                // titleMedium: const TextStyle(
                //   fontFamily: 'Fontspring-DEMO-biotif',
                //   fontWeight: FontWeight.bold,
                // ),
                // titleSmall: const TextStyle(
                //   color: Colors.red,
                //   fontSize: 17,
                //   fontFamily: 'Fontspring-DEMO-biotif',
                //   fontWeight: FontWeight.normal,
                // ),
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

      // initialRoute: '/',
      // routes: const {
      //    '/': (ctx) => WelcomeScreen(),
      //   '/category-places':(context) => CategoryPlaces(),

      //   // '/': (ctx) => Tabs(_favoriteMeals),
      //   // signupScreen.routeName: (ctx) => SignUp(),
      //   // MealDetail.routeName: (ctx) =>
      //   //     MealDetail(_toggleFavorit, _isMealFavorite),
      // }, // pushNamed
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (ctx) => WelcomeScreen());
      // },
    );
  }
}
