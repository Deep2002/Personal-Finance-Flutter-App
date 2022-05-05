import 'package:flutter/material.dart';
import 'package:personal_finance/Pages/HomePage.dart';
import 'package:personal_finance/Pages/SummaryChartsPage.dart';
import 'package:personal_finance/Widgets/SummaryChart.dart';

import 'Widgets/AppColors.dart';
import 'Widgets/AppDrawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // list of pages
  List<Widget> pages = [
    const HomePage(),
    const SummaryChartsPage(),
    const HomePage(),
  ];
  int _selectedPageIndex = 0;
  void _onPageChange(int selectedPage) {
    setState(() {
      _selectedPageIndex = selectedPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.bg,
        drawer: const AppDrawer(),
        body: pages[_selectedPageIndex],
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.data_usage_sharp),
                label: 'Summary charts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.request_page_outlined),
                label: 'Statements',
              ),
            ],
            backgroundColor: AppColors.bg,
            fixedColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(255, 133, 133, 133),
            currentIndex: _selectedPageIndex,
            onTap: _onPageChange,
          ),
          height: 100,
          margin: const EdgeInsets.only(top: 10),
        ),
      ),
    );
  }
}
