import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EtMineAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;
  final Icon? iconPrincipal;
  final Icon? iconSecondary;

  const EtMineAppBar(
      {super.key,
      this.title = 'Design AppEco',
      this.back = false,
      this.iconPrincipal,
      this.iconSecondary});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarDetails,
      centerTitle: true,
      title: H1(
        text: title,
        key: const Key('head-em'),
      ),
      leading: back
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      actions: [
        if (iconPrincipal != null)
          IconButton(
            icon: iconPrincipal ?? const Icon(Icons.notifications),
            onPressed: () {
              if (kDebugMode) {
                print("Oprimiste iconPrincipal");
              }
            },
          ),
        if (iconSecondary != null)
          IconButton(
            icon: iconSecondary ?? const Icon(Icons.navigate_next),
            onPressed: () {
              if (kDebugMode) {
                print("Oprimiste iconSecondary");
              }
            },
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
