import 'package:flutter/material.dart';
import 'package:tn/main.dart';

import '../../core/style.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 50.0),
            decoration: const BoxDecoration(
                borderRadius: AppBorderRadius.defaultBorderRadius,
                color: AppColors.content),
            child: Column(
              children: [
                const Text(
                  "Only 5 requests per minute supported",
                  style: AppTextStyle.defaultTextStyle,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  "Please Try again 1 minute later",
                  style: AppTextStyle.defaultTextStyle,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const  MyApp(),
                          ),
                          (route) => false);
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        )),
                    child: Container(
                      height: 50.0,
                      width: 200,
                      alignment: Alignment.center,
                      child: const Text(
                        "Try Again",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
