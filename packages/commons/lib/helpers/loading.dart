//helper method to show progress
import 'package:sn_progress_dialog/sn_progress_dialog.dart';
import 'package:flutter/material.dart';

late ProgressDialog progressDialog;

showProgress(BuildContext context, String message, bool isDismissible) async {
  progressDialog = ProgressDialog(context: context);
  // progressDialog.style(
  //     message: message,
  //     borderRadius: 10.0,
  //     backgroundColor: const Color(colorPrimary),
  //     progressWidget: Container(
  //       padding: const EdgeInsets.all(8.0),
  //       child: const CircularProgressIndicator(
  //         backgroundColor: Colors.white,
  //         valueColor: AlwaysStoppedAnimation(Color(colorPrimary)),
  //       ),
  //     ),
  //     elevation: 10.0,
  //     insetAnimCurve: Curves.easeInOut,
  //     messageTextStyle: const TextStyle(
  //         color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.w600));
  await progressDialog.show(
    max: 2,
    msg: message,
  );
}

updateProgress(String message) {
  progressDialog.update(msg: message, value: 1);
}

hideProgress() async {
  progressDialog.close();
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
