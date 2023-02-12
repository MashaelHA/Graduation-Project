library custom_form_field;

import 'package:flutter/material.dart';

class CustomFormField {
  Center field({
    required String question,
    //
    required bool canBeNull,
    //
    required Function onSavedCallback,
    //
    required GlobalKey<FormState> formKey,
    //
    double? fieldTextFontSize,
    //
    String? initialValue,
    //
    double? verticalTextPadding,
    double? horizontalTextPadding,
    //
    Icon? icon,
    //

    double? borderRadius,
    //
    TextStyle? labelTextStyle,
    //
  }) {
    BorderRadius borderRadius_;
    borderRadius != null
        ? borderRadius_ = BorderRadius.circular(borderRadius)
        : borderRadius_ = BorderRadius.circular(25.0);

    //
    var sizedBox = Center(
      child: SizedBox(
        // width: double.infinity,
        width: 300,
        child: TextFormField(
          maxLines: null,
          initialValue: initialValue,
          textAlign: TextAlign.right,
          cursorColor: Colors.black,
          style: TextStyle(
            fontSize: fieldTextFontSize,
          ),
          decoration: InputDecoration(
            labelText: question,
            contentPadding:const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            //  EdgeInsets.symmetric(
            //     vertical: verticalTextPadding ?? 10,
            //     horizontal: horizontalTextPadding ?? 6
            //     ),
            errorBorder: OutlineInputBorder(
              borderRadius: borderRadius_,
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius_,
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius_,
              borderSide: const BorderSide(color: Colors.grey),
            ),
            border: OutlineInputBorder(
              borderRadius: borderRadius_,
              borderSide: const BorderSide(color: Colors.grey),
            ),
            labelStyle: labelTextStyle ??
                TextStyle(fontSize: fieldTextFontSize, color: Colors.grey[700]),
            // ignore: prefer_if_null_operators
            suffixIcon: icon != null ? icon : null,
            filled: true,
            fillColor: Colors.grey[200],
          ),
          validator: (String? value) {
            if (value!.trim().isEmpty && !canBeNull) {
              return 'Required';
            }
            return null;
          },
          onSaved: (String? val) {
            formKey.currentState?.validate();
            onSavedCallback(val.toString());
          },
        ),
      ),
    );
    return sizedBox;
  }
}
