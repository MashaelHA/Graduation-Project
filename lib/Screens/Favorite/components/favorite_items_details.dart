// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../home/components/header.dart';

class FavoriteItemsDetalis extends StatelessWidget {
  // const FavoriteItemsDetalis({Key? key}) : super(key: key);
  final int index;
  const FavoriteItemsDetalis(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('k'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Header(),
            // ignore: prefer_const_constructors
            Expanded(
              // ignore: prefer_const_constructors
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
