import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/service_type_button.dart';

class TypesWidgetComponent extends StatelessWidget {
  const TypesWidgetComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomServiceTypeButton(
          iconData: Icons.bolt,
          title: "Flash Deal",
        ),
        Gap(22),
        CustomServiceTypeButton(
          iconData: Icons.note_outlined,
          title: "Bill",
        ),
        Gap(22),
        CustomServiceTypeButton(
          iconData: Icons.videogame_asset_outlined,
          title: "Games",
        ),
        Gap(22),
        CustomServiceTypeButton(
          iconData: Icons.redeem_outlined,
          title: "Daily Gift",
        ),
        Gap(22),
        CustomServiceTypeButton(
          iconData: Icons.more_horiz_outlined,
          title: "More",
        ),
      ],
    );
  }
}
