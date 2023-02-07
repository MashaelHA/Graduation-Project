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
  // Map<String, bool> _filters = {
  //   'turinding': true,
  //   'beach': false,
  //   'activity': false,
  //   'resturant': false,
  // };
  // void _chaneFilters(Map<String, bool> filterData){

  // }

  // List<Places> _favoritePlaces = [];

  // void _toggleFavorit(String id) {
  //   final existingIndex =
  //       _favoritePlaces.indexWhere((place) => place.id == id);
  //   if (existingIndex >= 0) {
  //     setState() {
  //       _favoritePlaces.removeAt(existingIndex);
  //     }
  //   } else {
  //     setState() {
  //       _favoritePlaces.add(PlaceType_data.firstWhere((meal) => meal.id == id));
  //     }
  //   }
  // }

  // bool _isPlaceFavorite(String id) {
  //   return _favoritePlaces.any((meal) => meal.id == id);
  // }

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
              headline6: const TextStyle(
                color: SecondaryBlue,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              headline5: const TextStyle(
                // color: kPrimaryLightColor,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              headline4: const TextStyle(
                color: SecondaryGreen,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              headline3: const TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w500,
              ),
              headline2: const TextStyle(
                color: kTittileColor,
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w200,
              ),
              headline1: const TextStyle(
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
              subtitle1: const TextStyle(
                  color: kTittileColor,
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
              subtitle2: const TextStyle(
                  color: kPrimaryLightColor,
                  fontFamily: 'Almarai',
                  fontSize: 24,
                  fontWeight: FontWeight.w900),
              bodyText1: const TextStyle(
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
