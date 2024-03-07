import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomServiceTypeButton extends StatefulWidget {
  const CustomServiceTypeButton({
    super.key,
    this.title,
    this.iconData,
  });
  final String? title;
  final IconData? iconData;
  @override
  State<CustomServiceTypeButton> createState() =>
      _CustomServiceTypeButtonState();
}

class _CustomServiceTypeButtonState extends State<CustomServiceTypeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: RawMaterialButton(
              focusElevation: 0,
              hoverElevation: 0,
              disabledElevation: 0,
              highlightElevation: 0,
              onPressed: () {},
              elevation: 0,
              fillColor: const Color.fromRGBO(255, 230, 220, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                widget.iconData,
                size: 35,
                color: Color.fromRGBO(255, 130, 110, 1),
              ),
            ),
          ),
          Gap(5),
          Text(
            widget.title!,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                height: 1.2, fontSize: 14, color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
