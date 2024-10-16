import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/material.dart';

class EtMineCardReview extends StatelessWidget {
  final String imgPrincipal;
  final String textTitle;
  final String textTool;
  final String textDetail;
  final int cantStars;

  const EtMineCardReview({
    super.key,
    this.imgPrincipal =
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    this.textTitle = 'Minerva Vereau',
    this.textTool = 'Hace 1 minuto',
    this.textDetail =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    this.cantStars = 4,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(imgPrincipal),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SubTitle(text: textTitle),
                  const Spacer(),
                  ToolTipText(
                    text: textTool,
                  )
                ],
              ),
              SizedBox(
                width: 150,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => index <= cantStars
                          ? const Icon(
                              Icons.star,
                              size: 20,
                              color: starReview,
                            )
                          : const Icon(
                              Icons.star_border,
                              size: 20,
                            )),
                ),
              ),
              EtMineRichText(
                text: textDetail,
                maxLines: 3,
              )
            ],
          ))
        ],
      ),
    );
  }
}
