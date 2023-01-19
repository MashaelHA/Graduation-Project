// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../home/components/header.dart';
import '../../constants.dart';

class Plan extends StatelessWidget {
  // const Plan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    child: Text(
                      'الخطط',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.deepPurple[300],
                          size: 50,
                        ),
                        Text(
                          'الأماكن المفضلة التي تود زيارتها',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: SecondaryYellow,
                          size: 50,
                        ),
                        Text(
                          'أنظر إلى أماكنك المفضلة على الخريطة',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.edit_note,
                          color: SecondaryGreen,
                          size: 50,
                        ),
                        Text(
                          'تتبع الملاحظات والروابط والمزيد',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.share_outlined,
                          color: SecondaryBlue,
                          size: 50,
                        ),
                        Text(
                          'شارك اصدقائك خطتك',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.subtitle1,
                      decoration: const InputDecoration(
                        hintText: 'اسم الرحلة',
                        filled: true,
                        fillColor: kPrimaryLightColor,
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: kPrimaryColor, width: 2.0),
                        ),
                        // focusedBorder: UnderlineInputBorder(
                        //     borderSide:
                        //         BorderSide(color: Color(0xFFFF234F), width: 2.0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        backgroundColor: Colors.pink,
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: Text(
                        'أصنع رحلة ',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
