// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../data/firebaseauth.dart';

class Header extends StatefulWidget {
  // const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

Firebaseauth _controller = Firebaseauth();

class _HeaderState extends State<Header> {
  delaytime() {
    setState(() {
      isloading = true;
    });
  }

  bool isloading = false;
  @override
  void initState() {
    Firebaseauth.username = [];
    Future.delayed(const Duration(seconds: 4), () {
      delaytime();
    });
    _controller.getname();
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return isloading
        ? Container(
            padding: const EdgeInsets.only(right: 10, top: 18),
            child: Row(
              children: [
                // Container(
                //   alignment: Alignment.centerRight,
                //   child: const Icon(
                //     Icons.search,
                //     size: 30,
                //   ),
                // ),
                SizedBox(
                  width: width / 2,
                ),
                // const SizedBox(
                //   width: 30,
                // ),
                Row(
                  children: [
                    const Text(
                      ' مرحبا , يا',
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    Text(
                      Firebaseauth.username[0]["name"],
                      style: const TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ],
                ),
                const Icon(
                  Icons.person,
                  color: Colors.red,
                  size: 40,
                ),
              ],
            ),
          )
        : Container();
  }
}
