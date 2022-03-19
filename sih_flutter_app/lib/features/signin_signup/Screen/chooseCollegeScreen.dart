import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sih_flutter_app/core/colores.dart';
import 'package:sih_flutter_app/core/injection.dart';
import 'package:sih_flutter_app/features/signin_signup/bloc/chooseCollege/choosecollege_bloc.dart';

import '../../common/widgets/textFieldCustom.dart';
import '../models/collegesListGet.dart';

class ChooseCollegeScreen extends StatefulWidget {
  ChooseCollegeScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCollegeScreen> createState() => _ChooseCollegeScreenState();
}

class _ChooseCollegeScreenState extends State<ChooseCollegeScreen> {
  Datum? selectedCollege;
  List<String> collegeNames = [];
  TextEditingController rollNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChoosecollegeBloc>()..add(ChoosecollegeEvent.loadColleges()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kColors.whitePure,
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BlocConsumer<ChoosecollegeBloc, ChoosecollegeState>(
                    listener: (context, state) {
                      state.mapOrNull(done: (s) {
                        Navigator.of(context).pushReplacementNamed('/home', arguments: s.sudentsInformationGet);
                      });
                    },
                    builder: (context, state) {
                      return Column(
                        // shrinkWrap: true,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          // const Text(
                          //   "Product Name",
                          //   style: TextStyle(fontSize: 30),
                          //   textAlign: TextAlign.left,
                          // ),
                          Image.asset("assets/images/DarkName.png"),
                          const SizedBox(height: 30),
                          Text("Enter Roll Number", style: TextStyle(fontSize: 22, color: kColors.purpleDark)),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextFieldCustom(
                                controller: rollNumberController,
                                hintText: "Roll Number",
                                isValid: true,
                                errorText: null,
                                obscureText: false),
                          ),
                          const SizedBox(height: 20),
                          Text("Choose College", style: TextStyle(fontSize: 22, color: kColors.purpleDark)),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: state.mapOrNull(
                              loadedColleges: (s) {
                                return DropdownButton<Datum>(
                                    items: s.collegesListGetResponse.data
                                        .map(
                                          (e) => DropdownMenuItem(
                                            child: Text(e.instituteName.toString()),
                                            value: e,
                                          ),
                                        )
                                        .toList(),
                                    hint: const Text("--Select One--"),
                                    disabledHint: const Text("--Select One--"),
                                    // dropdownColor: kColors.purpleLight,

                                    value: selectedCollege,
                                    isExpanded: true,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedCollege = value;
                                      });
                                    });
                              },
                              loadingColleges: (s) {
                                return DropdownButton<Datum>(
                                    items: [],
                                    hint: const Text("--Loading--"),
                                    // disabledHint: const Text("--Select One--"),
                                    // dropdownColor: kColors.purpleLight,

                                    value: selectedCollege,
                                    isExpanded: true,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedCollege = value;
                                      });
                                    });
                              },
                            ),
                          ),
                          const SizedBox(height: 30),
                          Image.asset("assets/images/ChooseCollegeScreenImage.png", fit: BoxFit.fitWidth),
                          const SizedBox(height: 30),
                          Center(
                            child: state.mapOrNull(loadedColleges: (_) {
                              return Container(
                                height: 60,
                                constraints: const BoxConstraints(maxWidth: 200, minWidth: 170),
                                decoration:
                                    BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark),
                                child: InkWell(
                                    onTap: () {
                                      BlocProvider.of<ChoosecollegeBloc>(context).add(ChoosecollegeEvent.postCollege(
                                          universityId: selectedCollege!.id!, rollNumber: rollNumberController.text));
                                    },
                                    child: Center(
                                        child:
                                            Text("Submit", style: TextStyle(fontSize: 24, color: kColors.whitePure)))),
                              );
                            }, postingCollege: (_) {
                              return CircularProgressIndicator.adaptive(
                                backgroundColor: kColors.purpleDark,
                              );
                            }),
                          ),
                          const SizedBox(height: 30),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
