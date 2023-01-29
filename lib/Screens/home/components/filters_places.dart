import 'package:flutter/material.dart';

class FilterPlaces extends StatefulWidget {
  const FilterPlaces({Key? key}) : super(key: key);

  @override
  State<FilterPlaces> createState() => _FilterPlacesState();
}

class _FilterPlacesState extends State<FilterPlaces> {
  var _isTrending = true;
  var _isBeach = true;
  var _isActivities = false;
  var __isResturant = false;
  // var _isHotel = false;


  Widget buildSwichListTile(var curruntValu, Function updateValue) {
    return SwitchListTile(
          value: curruntValu, 
          onChanged: updateValue(),
          // ((value) {
          //   setState(() {
          //     _isTrending = value;
          //   });
          // }
          // ),
        );
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          buildSwichListTile(
            _isTrending,
            ((value) {
            setState(() {
              _isTrending = value;
            });
          }
          ),
            ),

            buildSwichListTile(
            _isActivities,
            ((value) {
            setState(() {
              _isActivities = value;
            });
          }
          ),
            ),



            buildSwichListTile(
            _isBeach,
            ((value) {
            setState(() {
              _isBeach = value;
            });
          }
          ),
            ),


            buildSwichListTile(
            __isResturant,
            ((value) {
            setState(() {
              __isResturant = value;
            });
          }
          ),
            ),


        ],
        ),
      );
  }
  
}