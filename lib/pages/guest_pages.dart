import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakarta_tourist_pass/themes/colors.dart';
import 'package:jakarta_tourist_pass/widgets/navbar_widget.dart';

class GuestPages extends StatefulWidget {
  const GuestPages({super.key});

  @override
  State<GuestPages> createState() => _GuestPagesState();
}

class _GuestPagesState extends State<GuestPages> {
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              buildHeader(),
              buildBody(),
              buidldButtonHelp()
            ],
          ),
        ),
      ),
    );
  }


  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/opsi_bahasa.png"),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: colorWhite,
            boxShadow: [
              BoxShadow(offset: Offset(0.0, 4.0), blurRadius: 4, color: colorGrey)
            ]
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Icon(Icons.credit_card, size: 16,),
            ),
            Image.asset("assets/jakcard.png")
          ],),
        )
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60, bottom: 12),
          child: Stack(
            children: [
              Image.asset("assets/monas.png"),
              Container(
                margin: const EdgeInsets.only(top: 240, left: 75),
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: colorPrimary
                ),
                child: Text("Monumen Nasional", style: TextStyle(fontSize: 12, color: colorWhite, fontWeight: FontWeight.w700, fontFamily: GoogleFonts.nunito().fontFamily),))
            ],
          )
        ),
        Text("Explore Jakarta with Jakarta Tourist Pass", style: TextStyle(color: colorPrimary, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700)),
        buildButtonGuest(),
      ],
    );
  }

  Widget buildButtonGuest() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarWidget())),
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(color: colorYellow),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    colorSecondary,
                    colorPrimary
                ])
              ),
              child: Text("Continue as a Guest", style: TextStyle(color: colorWhite, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700, fontSize: 20),),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarWidget())),
            child: Container(
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  colorYellow,
                  colorSecondary
                ])
              ),
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 40.0),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(24.0)
                  ),
                  child: Text("Continue as a Guest", style: TextStyle(color: colorSecondary, fontFamily: GoogleFonts.nunito().fontFamily, fontWeight: FontWeight.w700, fontSize: 20),)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buidldButtonHelp() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Image.asset("assets/help.png"),
    );
  }
}