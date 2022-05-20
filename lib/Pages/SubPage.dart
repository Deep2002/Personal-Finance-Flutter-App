import 'package:flutter/material.dart';

import '../Widgets/AppColors.dart';

class SubPage extends StatefulWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  var dropdownValue = 'Grocery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 75),
                const Icon(Icons.info_outline, color: Colors.grey),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Enter how much money you have spent and where you did.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 173, 173, 173),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: TextField(
                    keyboardAppearance: Brightness.dark,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                        ),
                        hintText: '0.00',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIconColor: Colors.white,
                        prefixIconConstraints:
                            BoxConstraints.tightFor(width: 20),
                        prefixIcon: Icon(
                          Icons.attach_money_rounded,
                          color: Color.fromARGB(255, 211, 0, 0),
                          size: 60,
                        )),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Select spent type:',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 19,
                        ),
                      ),
                      DropdownButton(
                        items: <String>[
                          'Grocery',
                          'Restaurants',
                          'Gas',
                          'Clothes',
                          'Tech',
                          'Home',
                          'Other',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(color: Colors.white),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        value: dropdownValue.toString(),
                        borderRadius: BorderRadius.circular(25),
                        dropdownColor: AppColors.bg,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Description:',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        cursorColor: Colors.blue,
                        style: TextStyle(color: Colors.white),
                        keyboardAppearance: Brightness.dark,
                        maxLength: 20,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          hintText: 'Where did you spent it?',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w200,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          fillColor: Color.fromARGB(255, 48, 48, 48),
                          filled: true,
                          counterStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'POST',
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
                    fixedSize: MaterialStateProperty.all(const Size(350, 45)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.buttonRed),
                  ),
                ),
              ],
            ),
            height: 690,
            width: 500,
            decoration: BoxDecoration(
                color: AppColors.containerFrame,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33))),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'BACK',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              fixedSize: MaterialStateProperty.all(const Size(350, 45)),
              backgroundColor: MaterialStateProperty.all(AppColors.buttonBlue),
              overlayColor: MaterialStateProperty.all(Colors.cyan[200]),
            ),
          ),
        ],
      ),
    );
  }
}
