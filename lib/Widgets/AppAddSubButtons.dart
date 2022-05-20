import 'package:flutter/material.dart';
import 'package:personal_finance/Pages/SubPage.dart';

import '../Pages/AddPage.dart';
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
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      maintainState: true,
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const AddPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
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
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      maintainState: true,
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const SubPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
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
