import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sih_flutter_app/core/colores.dart';
import 'package:sih_flutter_app/core/injection.dart';
import 'package:sih_flutter_app/features/homepage/bloc/opportunitiesBloc/opportunities_bloc.dart';
import 'package:sih_flutter_app/features/homepage/models/listopportunitiesResponse.dart';
import 'package:sih_flutter_app/features/homepage/screens/drawer.dart';
import 'package:intl/date_symbol_data_custom.dart';
import '../../signin_signup/models/sudentsInformationPost.dart';

class HomePage extends StatelessWidget {
  final SudentsInformationGet sudentsInformationGet;
  const HomePage({Key? key, required this.sudentsInformationGet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OpportunitiesBloc>()..add(OpportunitiesEvent.loadOpportunities()),
      child: Scaffold(
        backgroundColor: kColors.whitePurple,
        drawer: SideDrawer(
          sudentsInformationGet: sudentsInformationGet,
        ),
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
      ),
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
                        // fit: BoxFit.fitWidth,
                        // height: 300,
                        width: 300,
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
                    BlocBuilder<OpportunitiesBloc, OpportunitiesState>(
                      builder: (context, state) {
                        return state.map(
                            loading: (s) => Container(),
                            loaded: (s) => ListView.builder(
                                itemCount: s.listopportunitiesResponse.data.length + 1,
                                itemBuilder: (BuildContext context, int index) {
                                  print(index);
                                  if (index == s.listopportunitiesResponse.data.length) {
                                    return const SizedBox(height: 270);
                                  } else {
                                    return _HomeCard(data: s.listopportunitiesResponse.data[index]);
                                  }
                                }));
                      },
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        "Comming Soon!",
                        style: TextStyle(color: kColors.purpleDark, fontSize: 24),
                      )),
                    ),
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
  final Datum data;
  _HomeCard({
    Key? key,
    required this.data,
  }) : super(key: key);
  final DateFormat formatter = DateFormat('dd-MMMM-yyyy');

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
                          data.title,
                          style: TextStyle(fontSize: 18, color: kColors.purpleDark),
                        ),
                        Text(
                          data.title,
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
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(formatter.format(data.applicationDeadline)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
