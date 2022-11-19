import 'package:commons/constant/constant.dart';
import 'package:flutter/material.dart';

ElevatedButton elevatedButton(
    {required Function() onPressed, required String label, bool? isOutlined}) {
  return ElevatedButton(
      onPressed: onPressed,
      style: isOutlined ?? false
          ? ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 4, 74, 79)),
            )
          : ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorPrimary)),
      child: SizedBox(
        width: double.infinity,
        height: 40.0,
        child: Center(
            child: Text(
          label,
          style: TextStyle(
              color: isOutlined ?? false ? Colors.white : Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w600),
        )),
      ));
}
