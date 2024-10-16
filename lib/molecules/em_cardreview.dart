import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/material.dart';

class EmCardReview extends StatelessWidget {
  final String imgPrincipal;
  final String textTitle;
  final String textTool;
  final String textDetail;
  final int cantStars;

  const EmCardReview(
      {super.key,
      this.imgPrincipal =
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      this.textTitle = 'Minerva Vereau',
      this.textTool = 'Hace 1 minuto',
      this.textDetail =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      this.cantStars = 4});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imgPrincipal),
          ),
          Column(
            children: [
              Row(
                children: [Text(textTitle), const Spacer(), Text(textTool)],
              ),
              ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    5,
                    (index) => index <= cantStars
                        ? const Icon(
                            Icons.star,
                            color: starReview,
                          )
                        : const Icon(
                            Icons.star_border,
                          )),
              ),
              Text(textDetail, maxLines: 3)
            ],
          )
        ],
      ),
    );
  }
}