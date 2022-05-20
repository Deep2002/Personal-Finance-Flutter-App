import 'package:flutter/material.dart';
import 'package:personal_finance/widgets/AppColors.dart';
import 'package:personal_finance/widgets/AppText.dart';
import 'package:personal_finance/widgets/SummaryChart.dart';

import '../Widgets/RecentChangesGraph.dart';

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
                      text: 'Month Summary',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 132, 132, 132),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
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
                            const Size(340, 40)),
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
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    AppText(
                      text: 'Recent Changes',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 132, 132, 132),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const RecentChangesGraph(),
                    const SizedBox(
                      height: 25,
                    ),
                    const Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        'The above graph show\'s the recent day\'s activities. This graph will go up or down if the deposit or payment has been made. The graph will only show the approximate values, to see the actual value hold on dots.',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('PRINT MONTH REPORT'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(99, 99, 99, 1)),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(340, 40)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(42),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 5,
                      offset: Offset(0, -1),
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
