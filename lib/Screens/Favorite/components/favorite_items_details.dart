import 'package:flutter/material.dart';

import '../../home/components/header.dart';

class FavoriteItemsDetalis extends StatelessWidget {
  // const FavoriteItemsDetalis({Key? key}) : super(key: key);
  final int index;
  FavoriteItemsDetalis(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('k'),
      ),
      body: Container(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
