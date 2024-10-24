import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakarta_tourist_pass/themes/colors.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView(
          children: [
            buildHeader(size),
            buildItem(),
            buildBanner(size)
          ],
        ),
      ),
    );
  }

  Widget buildHeader(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height / 2.85,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                colorSecondary,
                colorPrimary
              ])
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/jakonepay.png"),
                      Container(child: Row(
                        children: [
                          Image.asset("assets/ic_note.png"),
                          Image.asset("assets/ic_notif.png")
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Icon(Icons.account_circle_rounded, color: colorWhite, size: 40,),
                      ),
                      Text("Good morning, \nGuest", style: TextStyle(color: colorWhite, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: GoogleFonts.nunito().fontFamily),),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: buildCardBalanceAccount(size))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardBalanceAccount(Size size) {
    return Container(
      width: size.width,
      height: 80,
      margin: const EdgeInsets.only(top: 24.0, left: 12.0, right: 12.0),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 2.0), blurRadius: 4.0, color: colorGrey
          )
        ]
      ),
      child: Row(
        children: [
          Container(
            width: 12,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0), bottomLeft: Radius.circular(8.0)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                colorSecondary,
                colorPrimary,
                colorYellow
              ])
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Balance Account", style: TextStyle(fontSize: 12, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w400),),
                Row(
                  children: [
                    Text("Rp ", style: TextStyle(fontSize: 12, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w400),),
                    Text("0", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                  ],
                ),
                 Text("-", style: TextStyle(fontSize: 12, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: colorYellow),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                colorSecondary,
                colorPrimary
              ])
            ),
            child: Text("Top Up", style: TextStyle(color: colorWhite, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w800),
          ))
        ],
      ),
    );
  }

  Widget buildItem() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colorYellow,
                      colorPrimary
                  ])
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Color(0xFFFFE3CA),
                        Color(0xFFFFFFFF)
                      ])
                    ),
                    child: Image.asset("assets/ic_explore.png")),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text("Explore Jakarta", style: TextStyle(fontSize: 10, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700),),
              )
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colorYellow,
                      colorPrimary
                  ])
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Color(0xFFFFE3CA),
                        Color(0xFFFFFFFF)
                      ])
                    ),
                    child: Image.asset("assets/ic_wallet.png")),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text("Top Up JakCard", style: TextStyle(fontSize: 10, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700),),
              )
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colorYellow,
                      colorPrimary
                  ])
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Color(0xFFFFE3CA),
                        Color(0xFFFFFFFF)
                      ])
                    ),
                    child: Image.asset("assets/ic_credit_card.png")),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text("JakCard Balance", style: TextStyle(fontSize: 10, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700),),
              )
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colorYellow,
                      colorPrimary
                  ])
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Color(0xFFFFE3CA),
                        Color(0xFFFFFFFF)
                      ])
                    ),
                    child: Image.asset("assets/ic_event.png")),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text("Event", style: TextStyle(fontSize: 10, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700),),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildBanner(Size size) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 24, 0, 24),
      width: size.width,
      height: 100,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset("assets/banner.png"),
          Image.asset("assets/banner.png")
        ],
      ),
    );
  }
}