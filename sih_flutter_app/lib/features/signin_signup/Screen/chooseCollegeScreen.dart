import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

import '../../common/widgets/textFieldCustom.dart';

class ChooseCollegeScreen extends StatefulWidget {
  ChooseCollegeScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCollegeScreen> createState() => _ChooseCollegeScreenState();
}

class _ChooseCollegeScreenState extends State<ChooseCollegeScreen> {
  String? selectedCollege;
  List<String> collegeNames = [
    "Data1",
    "Data2",
    "Data3",
    "Data4",
    "Data5",
    "Data6",
    "Data7",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kColors.whitePure,
      // appBar: AppBar(
      //   backgroundColor: kColors.whitePure.withOpacity(0.5),
      //   iconTheme: IconThemeData(color: kColors.purpleLight, size: 30),
      //   elevation: 0,
      //   title: Text("Verify", style: TextStyle(color: kColors.blackPure)),
      // ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                // shrinkWrap: true,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    "Product Name",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 30),
                  Text("Choose College", style: TextStyle(fontSize: 22, color: kColors.purpleDark)),
                  const SizedBox(height: 30),
                  DropdownButton<String>(
                      items: collegeNames
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      hint: const Text("--Select One--"),
                      // disabledHint: const Text("--Select One--"),
                      // dropdownColor: kColors.purpleLight,

                      value: selectedCollege,
                      isExpanded: true,
                      onChanged: (value) {
                        setState(() {
                          selectedCollege = value;
                        });
                      }),
                  const SizedBox(height: 30),
                  Image.asset("assets/images/ChooseCollegeScreenImage.png", fit: BoxFit.fitWidth),
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      height: 60,
                      constraints: const BoxConstraints(maxWidth: 200, minWidth: 170),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark),
                      child: Center(child: Text("Next", style: TextStyle(fontSize: 24, color: kColors.whitePure))),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
