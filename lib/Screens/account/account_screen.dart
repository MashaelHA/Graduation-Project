// ignore_for_file: use_key_in_widget_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import '../home/components/header.dart';
import '../plane/plane_screen.dart';
import '../Favorite/favorite_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/firebaseauth.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

Firebaseauth _controller=Firebaseauth();
class _AccountState extends State<Account> {
  delaytime(){
  setState(() {
      isloading=true;
  });
  }
  bool isloading=false;
   @override
  void initState() {
    Firebaseauth.username=[];
    Future.delayed(const Duration(seconds: 4), () {
        delaytime();

});
    _controller.getname();
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }
  // const Account({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading? Column(
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
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.black.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor: const Color(0xFFFAFAFA),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            Firebaseauth.username[0]["email"],
                            // 'البريد الالكتروني',
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'SST-Arabic-Roman',
                                  color: Color(0xFFB5B5BE))),
                          const SizedBox(
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
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.black.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor: const Color(0xFFFAFAFA),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            child: Icon(
                              Icons.key,
                              size: 24.0,
                              color: Color.fromARGB(255, 255, 242, 59),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            Firebaseauth.username[0]["phone"],
                            // 'كلمة المرور',
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'SST-Arabic-Roman',
                              color: Color(0xFFB5B5BE),
                            ),
                          ),
                          const SizedBox(
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
                          context,
                          MaterialPageRoute(
                            builder: (context) => Plan(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.black.withOpacity(0.2)),
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
                            child: Icon(Icons.arrow_forward_ios,
                                size: 24.0, color: Color(0xFF0000004D)),
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
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Favoraite(
                              id: '11',
                              title: 'n',
                              imageUrl: 'j',
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.black.withOpacity(0.2)),
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
                            child: Icon(Icons.arrow_forward_ios,
                                size: 24.0, color: Color(0xFF0000004D)),
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
                      // ignore: deprecated_member_use
                      onPressed: () => launch('https://t.me/TestMashel_bot'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.black.withOpacity(0.2)),
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
                          Text(
                            'المساعدة والدعم',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'SST-Arabic-Roman',
                                color: Color(0xFF555555)),
                          ),
                          SizedBox(
                            child: Icon(Icons.arrow_forward_ios,
                                size: 24.0, color: Color(0xFF0000004D)),
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
      ):Center(
        child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircularProgressIndicator(
                    value: 2,
                    semanticsLabel: 'Circular progress indicator',
                  ),
                  const Text("loading"),
                ],
              ),
      ),
    );
  }
}
