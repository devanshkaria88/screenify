import 'package:flutter/cupertino.dart';

enum ChipType { GOLD, SILVER, BRONZE }
enum CardType { VISA, MASTER_CARD, RUPAY }

class model_card {
  final String cardNumber, cvv, valid_thru, holder_name;
  final Color cardColor;
  final chipType;
  final cardType;
  final String backgroundUrl;
  final String bankLogoUrl;

  model_card(this.cardNumber, this.holder_name, this.valid_thru, this.cvv, this.cardColor,
      {this.backgroundUrl, this.chipType = ChipType.BRONZE, this.cardType = CardType.VISA, this.bankLogoUrl});
}
