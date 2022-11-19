//helper method to show progress
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:flutter/material.dart';

showProgress(BuildContext context, String message, bool isDismissible) async {
  // progressDialog.style(
  //     message: message,
  //     borderRadius: 10.0,
  //     backgroundColor: colorPrimary,
  //     progressWidget: Container(
  //       padding: const EdgeInsets.all(8.0),
  //       child: const CircularProgressIndicator(
  //         backgroundColor: Colors.white,
  //         valueColor: AlwaysStoppedAnimation(colorPrimary),
  //       ),
  //     ),
  //     elevation: 10.0,
  //     insetAnimCurve: Curves.easeInOut,
  //     messageTextStyle: const TextStyle(
  //         color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.w600));
  const CircularNotchedRectangle();
}

showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
}
