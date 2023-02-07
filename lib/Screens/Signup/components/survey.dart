// ignore_for_file: use_key_in_widget_constructors, unused_field

import 'package:flutter/material.dart';

import '../../../models/custom_form_field.dart';
import 'survey2.dart';
// import '../../home/components/header.dart';

class SurveyPage extends StatefulWidget {
  // const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  String? _name;

  _SurveyPageState() {
    _selectedValAge = _ageTypeList[0];
    _selectedValActive = _activeTypeList[0];
  }

  final List<String> _ageTypeList = <String>[
    'اختر عمرك',
    'من 10 الى 20',
    'من 21 الى 30',
    'من 31 الى 40',
    'اكبر من ذلك'
  ];

  final List<String> _activeTypeList = <String>[
    'نوع النشاط',
    'ترفيهي',
    'سياحي',
    'علاجي',
    'غير ذلك',
  ];

  String? _selectedValAge = 'اختر عمرك';
  String? _selectedValActive = 'نوع النشاط';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 40),
                  child: Text(
                    'املأ ملف التعريف الخاص بك أولا',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              //      DropdownButton(

              //   value: _selectedVal,
              //   items: _ageTypeList
              //       .map((e) => DropdownMenuItem(
              //             child: Text(e),
              //             value: e,
              //           ))
              //       .toList(),
              //   onChanged: (val) {
              //     setState(() {
              //       _selectedVal = val as String;
              //     });
              //   },
              // ),

              SizedBox(
                // height: 50,
                // width: double.infinity,
                width: 300,
                child: DropdownButtonFormField(
                  value: _selectedValAge,
                  items: _ageTypeList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedValAge = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_downward_outlined,
                    color: Colors.grey,
                  ),
                  // dropdownColor: Colors.deepPurple.shade50,
                  decoration: InputDecoration(
                    // labelText: 'عمرك', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey)),

                    fillColor: Colors.grey[200],
                  ),
                ),
              ),

              SizedBox(
                height: height / 45,
              ),

              CustomFormField().field(
                question: "مدينتك المفضلة",
                canBeNull: false,
                formKey: key,
                onSavedCallback: (String val) {
                  _name = val;
                },
                horizontalTextPadding: 20,
                verticalTextPadding: 10,
                labelTextStyle: const TextStyle(color: Colors.black),
                // icon: const Icon(
                //   Icons.email_outlined,
                //   color: Colors.grey,
                //   size: 25,
                // ),
                fieldTextFontSize: 15,
              ),

              SizedBox(
                height: height / 45,
              ),

              SizedBox(
                // height: 50,
                // width: double.infinity,
                width: 300,
                child: DropdownButtonFormField(
                  value: _selectedValActive,
                  items: _activeTypeList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedValActive = val as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_downward_outlined,
                    color: Colors.grey,
                  ),
                  // dropdownColor: Colors.deepPurple.shade50,
                  decoration: InputDecoration(
                    // labelText: 'عمرك', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey)),

                    fillColor: Colors.grey[200],
                  ),
                ),
              ),

              SizedBox(
                height: height / 45,
              ),

              CustomFormField().field(
                question: "كم من الوقت ستبقى؟",
                canBeNull: false,
                formKey: key,
                onSavedCallback: (String val) {
                  _name = val;
                },
                horizontalTextPadding: 20,
                verticalTextPadding: 10,
                labelTextStyle: const TextStyle(color: Colors.black),
                // icon: const Icon(
                //   Icons.email_outlined,
                //   color: Colors.grey,
                //   size: 25,
                // ),
                fieldTextFontSize: 15,
              ),

              // SizedBox(
              //   height: height / 45,
              // ),

              SizedBox(
                width: 300,
                // height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cateegories()));
                        // key.currentState!.save();
                        // debugPrint(_name);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            // side: BorderSide(width: 1.0, color: Colors.black),
                            borderRadius: BorderRadius.circular(25)), backgroundColor: Colors.pink,
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text(
                        "التالي",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
