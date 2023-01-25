// ignore_for_file: use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import '../home/components/header.dart';
import '../plane/plane_screen.dart';
import '../Favorite/favorite_screen.dart';

class Account extends StatelessWidget {
  // const Account({Key? key}) : super(key: key);
  // final String id;
  // final String title;
  // final String imageUrl;

  // const Account({
  //   required this.id,
  //   required this.title,
  //   required this.imageUrl,
  // });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          // Stack(
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: NetworkImage(
          //             'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTIbmlkAFRIw8RVusyZlToY6RihHKPa8hUsayHv9KeKJNWHsi9_'
          //             ),
          //           fit: BoxFit.cover,
          //           ),
          //       ),
          //       child: Container(

          //       )

          //     ),
          //   ],
          // ),

          Column(
        children: [
          Header(),
          const SizedBox(
            height: 50,
          ),
          

          Container(
            color: const Color(0xFF1624384D),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Plan()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: const Color(0xFFFAFAFA),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('البريد الالكتروني',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SST-Arabic-Roman',
                              color: Color(0xFFB5B5BE))),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ),
               const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Plan()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: const Color(0xFFFAFAFA),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                       SizedBox(
                          child: Icon(
                            Icons.key,
                            size: 24.0,
                            color: Color.fromARGB(255, 255, 242, 59),
                          ),
                      ),
                      SizedBox(
                        width: 10,
                        ),
                      Text('كلمة المرور',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SST-Arabic-Roman',
                              color: Color(0xFFB5B5BE),
                              ),
                              ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ),
                ],
              ),
            ),
          ),



           const SizedBox(
            height: 50,
          ),
          

          Container(
            color: const Color(0xFF1624384D),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Plan(),
                        ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: const Color(0xFFFAFAFA),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(
                          child: Icon(
                            Icons.date_range_outlined,
                            size: 24.0,
                            color: Colors.black,
                          ),
                      ),
                      SizedBox(
                        width: 10,
                        ),
                      Text('خطتي',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SST-Arabic-Roman',
                              color: Color(0xFF555555))),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 24.0,
                            color: Color(0xFF0000004D)),
                          ),
                    ],
                  ),
                ),
              ),

               const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const Favoraite(id: '11',title: 'n',imageUrl: 'j',),
                        ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: const Color(0xFFFAFAFA),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                     SizedBox(
                          child: Icon(
                            Icons.favorite_border,
                            size: 24.0,
                            color: Colors.black,
                          ),
                      ),
                      SizedBox(
                        width: 10,
                        ),
                      Text('المفضلة',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SST-Arabic-Roman',
                              color: Color(0xFF555555))),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 24.0,
                            color: Color(0xFF0000004D)),
                          ),
                    ],
                  ),
                ),
              ),




              const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Favoraite(),
                    //     ),
                    //     );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: const Color(0xFFFAFAFA),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                     SizedBox(
                          child: Icon(
                            Icons.question_mark_outlined,
                            size: 24.0,
                            color: Colors.black,
                          ),
                      ),
                      SizedBox(
                        width: 10,
                        ),
                      Text('المساعدة والدعم',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SST-Arabic-Roman',
                              color: Color(0xFF555555)),
                              ),
                      // const SizedBox(
                      //   width: 5,
                      // ),
                      SizedBox(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 24.0,
                            color: Color(0xFF0000004D)),
                          ),
                    ],
                  ),
                ),
              ),
                ],
              ),
            ),
          )



        ],
      ),
    );
  }
}
