// @dart=2.9
import 'package:flutter/material.dart';
// import 'package:project_visitor_to_eastrn/widgets/signupview.dart';
// import 'Screens/Signup/signup_screen.dart';
import 'Screens/Welcome/components/body.dart';
// import 'Screens/Welcome/welcome_screen.dart';
// import 'Screens/account/account_screen.dart';
// import 'Screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'utils/constants.dart';
// ignore: unused_import
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'widgets/survey_item.dart';
// // import './models/place.dart';
// // import './data/app_data.dart';
// // import './Screens/signup_screen.dart';
// // import 'Screens/places/places_screens.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
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
          fontFamily: 'Almarai',
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                color: SecondaryBlue,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              headlineSmall: const TextStyle(
                // color: kPrimaryLightColor,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              headlineMedium: const TextStyle(
                color: SecondaryGreen,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              displaySmall: const TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w500,
              ),
              displayMedium: const TextStyle(
                color: kTittileColor,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w200,
              ),
              displayLarge: const TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w200,
              ),
              headlineLarge: const TextStyle(
                color: kTittileColor,
                fontFamily: 'Almarai',
                fontSize: 24,
              ),
              titleMedium: const TextStyle(
                  color: kTittileColor,
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
              titleSmall: const TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: 'Almarai',
                  fontSize: 24,
                  fontWeight: FontWeight.w900),
              bodyLarge: const TextStyle(
                color: kPrimaryLightColor,
                fontFamily: 'Almarai',
                fontSize: 20,
                // fontWeight: FontWeight.normal,
              )),
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
      home: Body(),
    );
  }
}
