// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../data/app_data.dart';
import '../../home/components/tab.dart';
import '../../home/components/header.dart';

class Cateegories extends StatefulWidget {
  @override
  State<Cateegories> createState() => _CateegoriesState();
}

class _CateegoriesState extends State<Cateegories> {
  @override
  // ignore: override_on_non_overriding_member
  int counter = 0;

  List<bool> countercolor = List<bool>.filled(Cateegories_data.length, true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 150,
              ),
              child: Text(
                'ما الذي تهتم به أكثر؟',
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              height: 500,
              child: GridView.builder(
                itemCount: Cateegories_data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      countercolor[index] ? counter++ : counter--;
                      // ignore: avoid_print
                      print(counter);
                      setState(() {
                        countercolor[index] = !countercolor[index];
                      });
                    },
                    // ignore: duplicate_ignore, duplicate_ignore
                    child: Container(
                      // ignore: duplicate_ignore, duplicate_ignore
                      margin:
                          // ignore: prefer_const_constructors
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: countercolor[index] ? Colors.white : Colors.red,
                      child: Column(children: <Widget>[
                        Card(
                          child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              //padding: EdgeInsets.all(1),
                              margin: EdgeInsets.all(6),
                              width: 280,
                              height: 140,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  Cateegories_data[index].imageUrl,
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Text(Cateegories_data[index].title)
                      ]),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  crossAxisCount: 2,
                ),
              )),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 300,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (counter > 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          'you must choose three at least',
                          textAlign: TextAlign.center,
                        ),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Colors.pink,
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
          ),
        ],
      ),
    );
  }
}
