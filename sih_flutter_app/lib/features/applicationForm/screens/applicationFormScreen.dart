import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

class ApplicationFormScreen extends StatelessWidget {
  const ApplicationFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.purpleLight,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // expandedHeight: 300,
            // title: ,
            // pinned: false,
            leading: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back,
                color: kColors.purpleDark,
              ),
            ),
            pinned: true,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(200.0),
                child: Column(
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: kColors.purpleDark)),
                    const SizedBox(height: 10),
                    Text(
                      "Girls XYZ Scholarship",
                      style: TextStyle(fontSize: 28, color: kColors.purpleDark),
                    ),
                    const SizedBox(height: 10),
                    Text("by XYZ"),
                    const SizedBox(height: 15),
                  ],
                )),
            floating: true,
            centerTitle: true,
            // flexibleSpace: Container(
            //     height: 100,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleDark)),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [
          //       Container(
          //         // color: Colors.amber,
          //         // height: 200,
          //         decoration: BoxDecoration(
          //             color: kColors.purpleDark,
          //             borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          //         // width: 40,
          //         child: Column(
          //           children: const [
          //             SizedBox(height: 50),
          //             Text(
          //               "About xyz",
          //               style: TextStyle(
          //                 fontSize: 20,
          //               ),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.symmetric(horizontal: 65),
          //               child: Text(
          //                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
          //                 style: TextStyle(
          //                   fontSize: 16,
          //                 ),
          //                 textAlign: TextAlign.justify,
          //               ),
          //             ),
          //             const SizedBox(height: 20),
          //             const Padding(
          //               padding: EdgeInsets.symmetric(horizontal: 65),
          //               child: Text(
          //                 "There are X% chances you getting the scholarship. ",
          //                 style: TextStyle(
          //                   fontSize: 16,
          //                 ),
          //                 textAlign: TextAlign.justify,
          //               ),
          //             ),
          //             // SizedBox(height: 20),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // SliverFillViewport(
          //     // viewportFraction: 0.1,
          //     // padEnds: false,
          //     delegate: SliverChildListDelegate([
          //   const SizedBox(height: 20),
          //   const Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 65),
          //     child: Text(
          //       "There are X% chances you getting the scholarship. ",
          //       style: TextStyle(
          //         fontSize: 16,
          //       ),
          //       textAlign: TextAlign.justify,
          //     ),
          //   ),
          //   // SizedBox(height: 20),
          // ])),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    // color: Colors.amber,
                    // height: 1000,
                    decoration: BoxDecoration(
                        color: kColors.purpleDark,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
                    // width: 40,
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        Text(
                          "About xyz",
                          style: TextStyle(
                            fontSize: 24,
                            color: kColors.whitePurple,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 65),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat" *
                                4,
                            style: TextStyle(
                              fontSize: 20,
                              color: kColors.whitePurple,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: kColors.purpleDark,
                  child: Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60,
                            constraints: BoxConstraints(minWidth: 170, maxWidth: 200),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: kColors.greenLight,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(
                                child: Text("Apply Now", style: TextStyle(color: kColors.purpleDark, fontSize: 24))),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65),
                          child: Text(
                            "There are X% chances you getting the scholarship. ",
                            style: TextStyle(
                              fontSize: 16,
                              color: kColors.whitePurple,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // SliverFillRemaining(
          //   hasScrollBody: true,
          //   fillOverscroll: false,
          //   child: Column(children: [
          //     const SizedBox(height: 20),
          //     const Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 65),
          //       child: Text(
          //         "There are X% chances you getting the scholarship. ",
          //         style: TextStyle(
          //           fontSize: 16,
          //         ),
          //         textAlign: TextAlign.justify,
          //       ),
          //     ),
          //     // SizedBox(height: 20),
          //   ]),
          // ),
          // SliverList(
          //     delegate: SliverChildListDelegate([
          //   const SizedBox(height: 20),
          //   const Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 65),
          //     child: Text(
          //       "There are X% chances you getting the scholarship. ",
          //       style: TextStyle(
          //         fontSize: 16,
          //       ),
          //       textAlign: TextAlign.justify,
          //     ),
          //   ),
          //   SizedBox(height: 20),
          // ]))
        ],
      ),
    );
  }
}
