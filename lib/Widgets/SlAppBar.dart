import 'package:flutter/material.dart';

import 'AppColors.dart';

class SlAppBar extends StatefulWidget {
  const SlAppBar({Key? key}) : super(key: key);

  @override
  State<SlAppBar> createState() => _SlAppBarState();
}

class _SlAppBarState extends State<SlAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(31),
        ),
      ),
      expandedHeight: 200,
      backgroundColor: AppColors.containerFrame,
      collapsedHeight: 200,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$',
                style: TextStyle(
                  color: AppColors.buttonGreen,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '500.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Available credit for this month.',
            style: TextStyle(
              color: Color.fromARGB(255, 215, 215, 215),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
