import 'package:flutter/material.dart';
import 'package:shoeshop/Screen/SuccessMessage.dart';
import 'package:shoeshop/Services/Data.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int selectedCardIndex = -1;
  int selectedAddress = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        // color: Colors.blue.shade300,
        child: Column(
          children: [
            // ---------------first heading and add icon--------------
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFFDAD00),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: Color(0xFFFDAD00),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.27,
              // color: Colors.brown,
              child: ListView.builder(
                  itemCount: checkOut.length,
                  itemBuilder: (BuildContext context, int index) {
                    var name = checkOut[index]["title"];
                    var cardNo = checkOut[index]["cardNo"];
                    var imgPath = checkOut[index]["image"];
                    var maskedCardNo = cardNo.substring(cardNo.length - 4);
                    var maskedDigits = "";
                    for (int i = 0; i < cardNo.length; i++) {
                      maskedDigits += '*';
                    }
                    var cardNoNew = maskedDigits + maskedCardNo;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: cards(context, imgPath, name, cardNoNew, index),
                    );
                  }),
            ),
            // -------------------------card container finished herer--------------------

            // ------------------------------Following code is for shipping address
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Address",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFFDAD00),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: Color(0xFFFDAD00),
                    ),
                  ),
                ],
              ),
            ),
            // -------------shipping address cards-------------------------------
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.27,
              // color: Colors.brown,
              child: ListView.builder(
                  itemCount: checkOut.length,
                  itemBuilder: (BuildContext context, int index) {
                    var name = shippingAddress[index]["title"];
                    String address = shippingAddress[index]["address"];
                    var iconC = shippingAddress[index]["icon"];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: cards(context, iconC, name, address, index),
                    );
                  }),
            ),

            // -------------shopping details ---------------------------------------

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.86,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shopping Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFFDAD00),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: Color(0xFFFDAD00),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.12,
              // color: Colors.brown,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.013,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Total",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(
                            0.3,
                          ),
                        ),
                      ),
                      Text(
                        "\$ 795.00",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payable After Text",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(
                            0.3,
                          ),
                        ),
                      ),
                      Text(
                        "\$ 795.00",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Charge",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(
                            0.3,
                          ),
                        ),
                      ),
                      Text(
                        "\$ 30.00",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.084,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Column(
                        children: [
                          Text(
                            "Total Payable",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "\$ 825.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFDAD00),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuccessMessage()));
                        },
                        child: Text(
                          "ORDER NOW",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// --------------------------custom card for checkout----------------------------------
  Container cards(
      BuildContext context, imgPath, name, String cardNoNew, int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.115,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imgPath is String
                ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.asset(imgPath),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                      imgPath,
                      color: Colors.amber,
                    ),
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.9),
                  ),
                ),
                Text(
                  cardNoNew,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 8,
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedCardIndex = index;
                      });
                    },
                    child: selectedCardIndex == index
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.amber,
                          )
                        : Icon(
                            Icons.check_circle_outline,
                            color: Colors.amber,
                          ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
