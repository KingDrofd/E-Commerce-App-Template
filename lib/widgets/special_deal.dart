import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialDealWidget extends StatefulWidget {
  const SpecialDealWidget({
    super.key,
    this.title = "Catchy Phrase Here",
    this.subTitle = "Your Deal Here",
  });
  final String title;
  final String subTitle;
  @override
  State<SpecialDealWidget> createState() => _SpecialDealWidgetState();
}

class _SpecialDealWidgetState extends State<SpecialDealWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(100, 88, 155, 1),
                Color.fromRGBO(60, 44, 133, 1),
              ]),
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(24)),
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(-50, 150),
            child: ClipRect(
              clipBehavior: Clip.none,
              child: OverflowBox(
                maxHeight: 250,
                maxWidth: 250,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(9, 255, 255, 255),
                      shape: BoxShape.circle),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(120, -130),
            child: ClipRect(
              clipBehavior: Clip.none,
              child: OverflowBox(
                maxHeight: 300,
                maxWidth: 300,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(9, 255, 255, 255),
                      shape: BoxShape.circle),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style:
                      GoogleFonts.notoSans(color: Colors.white, fontSize: 13),
                ),
                Text(
                  widget.subTitle,
                  style: GoogleFonts.notoSans(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
