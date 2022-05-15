import 'package:flutter/material.dart';
import 'package:personal_finance/widgets/SlAppBar.dart';

import '../Widgets/AppAddSubButtons.dart';
import '../Widgets/TransactionList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SlAppBar(), // --------------- App bar
        const AppAddSubButtons(), // ------ Add and Subtract buttons
        const TransactionList(), // ------ List of transactions

        /// -------------------- Print transaction report button
        SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                onPressed: () {
                  print("Click");
                },
                child: const Text(
                  'Print Transaction Report',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  fixedSize: MaterialStateProperty.all(const Size(345, 40)),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(99, 99, 99, 1)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
