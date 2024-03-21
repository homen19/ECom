import 'package:flutter/material.dart';
import 'package:shoeshop/Screen/TrackOrder.dart';

class SuccessMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.height * 0.31,
              decoration: BoxDecoration(
                color: Color(0xFFF8F5E9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/orderPlaced.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Your Order Placed",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Text(
              "Lorem ipsum ametconsecteturNulla",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF777777),
              ),
            ),
            Text(
              "mauris condimentum",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF777777),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFDAD00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrackOrder()));
              },
              child: Text(
                "TRACK ORDER",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
