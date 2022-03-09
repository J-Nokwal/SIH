import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sih_flutter_app/core/colores.dart';
import 'package:sih_flutter_app/features/homepage/screens/drawer.dart';

import '../bloc/bloc/aaa_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColors.whitePurple,
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: kColors.whitePurple,
        // actionsIconTheme: IconThemeData(color: kColors.purpleDark),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: kColors.purpleDark,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatefulWidget {
  _HomeBody({Key? key}) : super(key: key);

  @override
  State<_HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<_HomeBody> {
  PageController pageController = PageController();
  bool isGovSelected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                  },
                  child: Container(
                    height: 60,
                    child: tabCurvedWidget(text: "Government\nUpdates", isSelected: isGovSelected),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    // isGovSelected = false;
                    pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                  },
                  child: Container(
                    height: 60,
                    child: tabCurvedWidget(text: "Campus\nUpdates", isSelected: !isGovSelected),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 5,
            width: Size.infinite.width,
            color: kColors.purpleDark,
          ),
          Expanded(
            child: Center(
                child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Image.asset(
                        "assets/images/homeScreenImage.png",
                        fit: BoxFit.none,
                        height: 300,
                      ),
                    )),
                PageView(
                  controller: pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      if (page == 0) {
                        setState(() {
                          isGovSelected = true;
                        });
                      } else {
                        setState(() {
                          isGovSelected = false;
                        });
                      }
                    });
                  },
                  children: [
                    ListView.builder(
                        itemCount: 20 + 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 20) {
                            return const SizedBox(height: 270);
                          }
                          return _HomeCard();
                        }),
                    ListView.builder(
                        itemCount: 20 + 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 20) {
                            return const SizedBox(height: 270);
                          }
                          return _HomeCard();
                        }),
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }

  Container tabCurvedWidget({required String text, required bool isSelected}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? kColors.purpleDark : kColors.whitePurple,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
        // borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: isSelected ? kColors.whitePure : kColors.purpleDark),
        ),
      ),
    );
  }
}

class _HomeCard extends StatelessWidget {
  const _HomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/application');
        },
        child: Container(
          // height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kColors.whitePure,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Internship - NITI Aayog",
                          style: TextStyle(fontSize: 18, color: kColors.purpleDark),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisc ing elit, sed do eiusmod tempor inci",
                          maxLines: 3,
                          softWrap: true,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kColors.purpleLight,
                    ),
                  ),
                  // SizedBox(width: 5),
                ]),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("10th March 11:45:29pm"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
