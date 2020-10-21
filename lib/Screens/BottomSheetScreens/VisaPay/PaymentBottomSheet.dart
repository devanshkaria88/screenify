import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenify/Screens/BottomSheetScreens/VisaPay/CardWidget.dart';
import 'package:screenify/Screens/BottomSheetScreens/VisaPay/model_card.dart';

enum PaymentResult { CARD_SELECTED, CANCELLED, PENDING }

class PaymentBottomSheet extends StatefulWidget {
  @override
  _PaymentBottomSheetState createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  List<model_card> cards = [
    model_card(
      "0135 4600 6889 2460",
      "Clara Hugus",
      "12/24",
      "196",
      Colors.indigoAccent,
      chipType: ChipType.BRONZE,
      bankLogoUrl: "https://logodownload.org/wp-content/uploads/2019/08/yes-bank-logo.png",
      backgroundUrl:
          "https://png.pngtree.com/thumb_back/fh260/back_our/20190621/ourmid/pngtree-blue-credit-card-for-financial-technology-banner-image_196331.jpg",
    ),
    model_card(
      "5369 0700 1234 5674",
      "Matthew Adams",
      "05/25",
      "456",
      Colors.white,
      chipType: ChipType.GOLD,
      bankLogoUrl: "https://cdn.freelogovectors.net/wp-content/uploads/2019/02/sbi_card_logo.png",
      backgroundUrl:
          "https://ffp4g1ylyit3jdyti1hqcvtb-wpengine.netdna-ssl.com/wp-content/themes/frontierline/img/fallbacks/pattern-6.png",
    ),
    model_card(
      "1169 2654 4891 7823",
      "Alena James",
      "08/22",
      "123",
      Colors.blue.shade300,
      chipType: ChipType.SILVER,
      cardType: CardType.MASTER_CARD,
      bankLogoUrl: "https://logos-download.com/wp-content/uploads/2016/12/Axis_Bank_logo_logotype.png",
      backgroundUrl: "https://cdn.shopify.com/s/files/1/0522/9149/files/Pattern_and_Black-03.png",
    ),
    model_card(
      "4462 1654 1564 5470",
      "Taosif Jamal",
      "02/25",
      "446",
      Colors.blueGrey,
      cardType: CardType.RUPAY,
      bankLogoUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Indian_Overseas_Bank_Logo.svg/440px-Indian_Overseas_Bank_Logo.svg.png",
      backgroundUrl: "https://www.manektech.com/images/banner-pattern.png",
    )
  ];

  int active_card_index = 0;
  String instruction = "Choose a card from your wallet";

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 50,
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 5,
        ),
        SizedBox(height: 20),
        Text(instruction, style: Theme.of(context).textTheme.bodyText1),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 200,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            physics: BouncingScrollPhysics(),
            children: [
              ...List.generate(
                cards.length,
                (index) {
                  CardWidget card = new CardWidget(cards[index]);
                  return GestureDetector(
                    child: card,
                    onTap: () {
                      Navigator.of(context).pop(PaymentResult.CARD_SELECTED);
                    },
                  );
                },
              )
            ],
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (i) {
              setState(() {
                active_card_index = i;
              });
            },
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                cards.length,
                (index) => Container(
                      margin: EdgeInsets.all(5),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: (index == active_card_index) ? Colors.blueGrey : Colors.grey.shade400),
                    )),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
