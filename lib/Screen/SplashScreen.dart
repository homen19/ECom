import 'package:flutter/material.dart';
import 'package:shoeshop/Screen/HomeScreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              const Text(
                "Best Place to\nFind Your Shoe",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF191010),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                "The point of using. Lorem Ipsum isthat\nReadable content of a page",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF777777),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.45,
                // color: Colors.blue.shade200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Image.asset("assets/images/Vector.png"),
                    ),
                    Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color(0x4DFDAD00),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xFFFDAD00),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Image.asset('assets/images/pngwing.png'),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFDAD00),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: const Text(
                    "GET STARTED",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
