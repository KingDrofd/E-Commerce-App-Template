import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForYouSpecialCard extends StatefulWidget {
  const ForYouSpecialCard({
    super.key,
    this.onTap,
    this.img = "https://i.cdn.newsbytesapp.com/images/l142_5951592045581.jpg",
    this.title = "Category",
    this.subTitle = "Category Details",
  });
  final Function()? onTap;
  final String? img;
  final String? title;
  final String? subTitle;
  @override
  State<ForYouSpecialCard> createState() => _ForYouSpecialCardState();
}

class _ForYouSpecialCardState extends State<ForYouSpecialCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 260,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                widget.img!,
                color: Colors.grey,
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title!,
                      style: GoogleFonts.notoSans(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      widget.subTitle!,
                      style: GoogleFonts.notoSans(
                          fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
