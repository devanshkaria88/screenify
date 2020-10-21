import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:screenify/Screens/BottomSheetScreens/VisaPay/model_card.dart';
import 'package:screenify/constants.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final model_card card;

  CardWidget(this.card);

  @override
  Widget build(BuildContext context) {
    Color chipColor = Colors.grey.shade400;
    switch (card.chipType) {
      case ChipType.BRONZE:
        chipColor = Colors.brown.shade300.withAlpha(180);
        break;
      case ChipType.GOLD:
        chipColor = Colors.yellow.shade300;
        break;
      case ChipType.SILVER:
        chipColor = Colors.grey.shade300;
        break;
    }

    String card_type_image = bottomsheetscreens_assets + "quickpay/visa.png";
    switch (card.cardType) {
      case CardType.VISA:
        card_type_image = bottomsheetscreens_assets + "quickpay/visa.png";
        break;
      case CardType.MASTER_CARD:
        card_type_image = bottomsheetscreens_assets + "quickpay/mastercard.png";
        break;
      case CardType.RUPAY:
        card_type_image = bottomsheetscreens_assets + "quickpay/rupay.png";
        break;
    }

    TextStyle credentialText = TextStyle(
        fontSize: 12,
        fontFamily: 'OCR',
        shadows: [
          Shadow(
            offset: Offset(0, 1),
            blurRadius: 2.0,
            color: Colors.black87,
          ),
          Shadow(
            offset: Offset(0, 0),
            blurRadius: 2.0,
            color: Colors.black87,
          ),
        ],
        color: Colors.white.withAlpha(220));

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
      decoration: BoxDecoration(
          color: card.cardColor,
          boxShadow: [BoxShadow(color: Colors.black38, offset: Offset(0, 10), blurRadius: 10, spreadRadius: -5)],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: [
            if (card.backgroundUrl != null)
              Image.network(
                card.backgroundUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0),
                ], transform: GradientRotation(5)),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 20,
              child: Image.asset(
                card_type_image,
                height: 25,
              ),
            ),
            if (card.bankLogoUrl != null)
              Positioned(
                top: 10,
                right: 20,
                child: Image.network(
                  card.bankLogoUrl,
                  height: 20,
                ),
              ),
            Positioned(
              left: 20,
              top: 50,
              height: 30,
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.black.withOpacity(0.7), borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Image.asset(
                  bottomsheetscreens_assets + "quickpay/chip.png",
                  alignment: Alignment.centerLeft,
                  color: chipColor,
                  colorBlendMode: BlendMode.srcATop,
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 20,
              child: Text(
                card.cardNumber,
                style: credentialText.copyWith(fontSize: 20),
              ),
            ),
            Positioned(
              top: 120,
              left: 20,
              child: Text(
                card.holder_name.toUpperCase() + "   " + card.valid_thru,
                style: credentialText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
