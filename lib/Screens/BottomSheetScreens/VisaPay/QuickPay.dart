import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screenify/Screens/BottomSheetScreens/VisaPay/PaymentBottomSheet.dart';

import '../../../constants.dart';

class QuickPay extends StatefulWidget {
  @override
  _QuickPayState createState() => _QuickPayState();
}

class _QuickPayState extends State<QuickPay> {
  PaymentResult payment_status = PaymentResult.PENDING;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Quick Pay"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Complete your order", style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.black)),
          Image.asset(bottomsheetscreens_assets + "quickpay/payment_image.png"),
          SizedBox(height: 40),
          Builder(builder: (BuildContext context) {
            switch (payment_status) {
              case PaymentResult.CARD_SELECTED:
                return Row(
                  children: [
                    Icon(Icons.done, color: Colors.green),
                    SizedBox(width: 10),
                    Text(
                      "Payment Complete",
                      style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                );
                break;
              case PaymentResult.CANCELLED:
                return Text("Payment Cancelled");
                break;
              case PaymentResult.PENDING:
              default:
                return FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    Future<PaymentResult> result = showModalBottomSheet(
                        builder: (BuildContext context) {
                          return new PaymentBottomSheet();
                        },
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                        enableDrag: true,
                        isDismissible: true,
                        context: context);
                    result.then((value) => {
                          setState(() {
                            payment_status = value;
                          })
                        });
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Text("Pay Now", style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                );
            }
          }),
        ],
      ),
    );
  }
}
