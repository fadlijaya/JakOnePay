import 'package:flutter/material.dart';
import 'package:jakarta_tourist_pass/pages/guest_pages.dart';
import 'package:jakarta_tourist_pass/pages/home_pages.dart';
import 'package:jakarta_tourist_pass/themes/colors.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoryPages(),
    );
  }
}

class CategoryPages extends StatefulWidget {
  const CategoryPages({super.key});

  @override
  State<CategoryPages> createState() => _CategoryPagesState();
}

class _CategoryPagesState extends State<CategoryPages> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int pageIndex = 0;

  final pageList = [
    HomePages(),
    HomePages()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Scaffold(
          body: pageList.elementAt(pageIndex),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton:  Image.asset("assets/ic_qris.png"),
          bottomNavigationBar: Container(
            height: 50,
            padding: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                blurRadius: 6,
                color: colorGrey.withOpacity(0.5),
                offset: Offset(0.0, 0.2))
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: Image.asset("assets/ic_home.png")
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: Image.asset("assets/ic_profil.png")
                ),
               
              ],
            ),
          ),
        ));
  }
}