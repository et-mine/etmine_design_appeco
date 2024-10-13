import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EtMineAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  const EtMineAppBar(
      {super.key,
      this.title = 'Arquitectura limpia',
      this.iconAppBarr = const Icon(Icons.add)});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: footerBackground,
      title: H1(
        text: title,
        key: const Key('head-wc'),
      ),
      actions: [
        IconButton(
          icon: iconAppBarr,
          onPressed: () {
            if (kDebugMode) {
              print("Oprimiste +");
            }
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () {
            if (kDebugMode) {
              print("Oprimiste >");
            }
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
