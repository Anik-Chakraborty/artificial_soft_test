import 'package:artificial_test/resources/Color.dart';
import 'package:flutter/material.dart';

LoadingDialog(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        backgroundColor: transparent,
        surfaceTintColor: transparent,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: white),
              child: const CircularProgressIndicator(
                backgroundColor: transparent,
                color: logoColor,
              ),
            ),
          ],
        ),
      );
    },
  );
}
