import 'package:flutter/material.dart';

import 'AppColors.dart';

class AppAddSubButtons extends StatefulWidget {
  const AppAddSubButtons({Key? key}) : super(key: key);

  @override
  State<AppAddSubButtons> createState() => _AppAddSubButtonsState();
}

class _AppAddSubButtonsState extends State<AppAddSubButtons> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Click");
                },
                child: const Text(
                  'ADD',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  fixedSize: MaterialStateProperty.all(const Size(170, 40)),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.buttonGreen),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  print("Click");
                },
                child: const Text(
                  'SUBTRACT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  fixedSize: MaterialStateProperty.all(const Size(170, 40)),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.buttonRed),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
