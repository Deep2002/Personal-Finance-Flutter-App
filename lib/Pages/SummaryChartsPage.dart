import 'package:flutter/material.dart';

import 'package:personal_finance/widgets/AppColors.dart';
import 'package:personal_finance/widgets/AppText.dart';
import 'package:personal_finance/widgets/SummaryChart.dart';

class SummaryChartsPage extends StatefulWidget {
  const SummaryChartsPage({Key? key}) : super(key: key);

  @override
  State<SummaryChartsPage> createState() => _SummaryChartsPageState();
}

class _SummaryChartsPageState extends State<SummaryChartsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(31),
              ),
            ),
            toolbarHeight: 100,
            centerTitle: true,
            backgroundColor: AppColors.containerFrame,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.donut_large_sharp),
                const SizedBox(width: 10),
                AppText(
                  text: "Summary Charts",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            // actions: [
            //   ButtonBar(
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            //           Navigator.canPop(context)
            //               ? Navigator.of(context).pop()
            //               : print('Can not pop!');
            //         },
            //         child: const Icon(
            //           Icons.swipe_left_alt_sharp,
            //           size: 30,
            //           color: Color.fromARGB(255, 197, 197, 197),
            //         ),
            //       ),
            //       const SizedBox(width: 10),
            //     ],
            //   ),
            // ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: 50,
                height: 1250.16,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    AppText(
                      text: "Month Summary",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 218, 218, 218),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const SummaryChart(),
                    const SizedBox(height: 10),
                    AppText(
                      text: '| You\'re doing grate. Keep it up |',
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('VIEW DETAILED GRAPH'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.buttonBlue),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(290, 40)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        overlayColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 33, 215, 243)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(42),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.buttonGreen,
                      blurRadius: 5,
                      offset: const Offset(0, -1),
                    ),
                  ],
                  color: const Color(0xff222121),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
