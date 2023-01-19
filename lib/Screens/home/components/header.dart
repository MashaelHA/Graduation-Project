import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  // const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(right: 10, top: 18),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          SizedBox(
            width: width / 2,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'مرحبا , محمد',
            style: TextStyle(
                color: Colors.red,
                fontSize: 17), //Theme.of(context).textTheme.titleSmall,
          ),
          Icon(
            Icons.person,
            color: Colors.red,
            size: 40,
          ),
        ],
      ),
    );
  }
}
