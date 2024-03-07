import 'package:flutter/material.dart';

class ActionsButtonAppBar extends StatefulWidget {
  const ActionsButtonAppBar({
    super.key,
    this.child,
    required this.onTap,
  });
  final Widget? child;
  final Function() onTap;
  @override
  State<ActionsButtonAppBar> createState() => _ActionsButtonAppBarState();
}

class _ActionsButtonAppBarState extends State<ActionsButtonAppBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: RawMaterialButton(
          focusElevation: 0,
          hoverElevation: 0,
          disabledElevation: 0,
          highlightElevation: 0,
          onPressed: widget.onTap,
          elevation: 0,
          fillColor: Colors.grey[100],
          shape: CircleBorder(),
          child: widget.child,
        ),
      ),
    );
  }
}
