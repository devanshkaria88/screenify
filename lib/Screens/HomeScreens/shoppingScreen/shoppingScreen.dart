import 'package:badges/badges.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'ChooseYourLook',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          _shoppingCartBadge(),
        ],
      ),
      body: ListView.builder(
          itemCount: 3,
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
                Divider(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),

                    // color: Colors.grey,
                  ),
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/images/homescreens/shoppingScreen/simple.jpg'),
                            fit: BoxFit.fitHeight,
                            height: 300.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Container(
                                      child: Text(
                                    "Street pop vibes \n \$120",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Container(
                                      child: Image(
                                    image:
                                        AssetImage('assets/images/homescreens/shoppingScreen/t-shirt.png'),
                                    fit: BoxFit.fill,
                                    height: 20.0,
                                  )),
                                  Container(
                                      child: Text("stripped T-shirt \n \$110")),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Container(
                                      child: Image(
                                    image:
                                        AssetImage('assets/images/homescreens/shoppingScreen/jeans.png'),
                                    fit: BoxFit.fill,
                                    height: 20.0,
                                  )),
                                  Container(
                                      child:
                                          Text("blue classic Jeans \n \$120")),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Container(
                                      child: Image(
                                    image: AssetImage(
                                        'assets/images/homescreens/shoppingScreen/smart-glasses.png'),
                                    fit: BoxFit.fill,
                                    height: 20.0,
                                  )),
                                  Container(
                                      child: Text("Rounded-Glasses \n \$80")),
                                ],
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Container(
                                    child: FlatButton.icon(
                                      splashColor: Colors.green,
                                      onPressed: () {
                                        setState(() {
                                          _counter++;
                                        });
                                        CoolAlert.show(
                                          context: context,
                                          confirmBtnColor: Colors.green,
                                          type: CoolAlertType.success,
                                          text: "Add to Cart Success",
                                        );
                                      },
                                      icon: Icon(Icons.add_shopping_cart),
                                      label: Text("Add To Cart"),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0),
                                        side: BorderSide(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget _shoppingCartBadge() {
    return Badge(
      position: BadgePosition.topEnd(top: 0, end: 3),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
        _counter.toString(),
        style: TextStyle(color: Colors.black),
      ),
      child: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {}),
    );
  }
}
