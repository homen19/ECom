import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoeshop/Screen/Cart.dart';
import 'package:shoeshop/Screen/HomeScreen.dart';
import 'package:shoeshop/Screen/Pract.dart';

class Details extends StatelessWidget {
  final String name;
  final String imgPath;
  final String typeShoe;
  final String price;
  final String description;
  final String rating;
  final List<CartItem> cartItems;

  const Details(
    this.name,
    this.imgPath,
    this.typeShoe,
    this.price,
    this.description,
    this.rating,
    // void Function(CartItem item) addToCart,
    this.cartItems,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          child: Column(
            children: [
              productDetailsImage(context),

              // Text(name),
              productDetails(context),
              colorSelector(context),
              sizeSelector(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
              ),
              priceAndCart(context),
            ],
          ),
        ),
      ),
    );
  }

  // ------------------------product image part --------------

  Widget productDetailsImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.38,
      // color: Colors.blue.shade200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Image.asset(
              "assets/images/ellipse.png",
              width: MediaQuery.of(context).size.width * 0.85,
            ),
          ),
          Positioned(
            child: Image.asset(
              imgPath,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }

// ----------------------------Product details part----------------

  Widget productDetails(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.24,
      // color: Colors.blue.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    typeShoe,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Text(
                    // -------------Here allowing only 13 character in name of the product-----

                    name,

                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border_rounded,
                  size: 27,
                  color: Color(0xFFFDAD00),
                ),
              )
            ],
          ),

          // -------------------------------------Review part------------------------------------------------------
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text("($rating)"),
              Text("Reviews"),
            ],
          ),

          // -------------------------description part----------------------------------
          Text(
            description,
            maxLines: 4,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF929292),
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

// ------------------------------------following method is for color Selection-------------------------
  Widget colorSelector(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.87,
      height: MediaQuery.of(context).size.height * 0.1,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Colors",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                      backgroundColor: Color(0xFF005E9F), // Color of the button
                    ),
                    child: Text(""), // Icon or any other child widget
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                      backgroundColor: Color(0xFFFFCE00), // Color of the button
                    ),
                    child: Text(""), // Icon or any other child widget
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                      backgroundColor: Color(0xFFFDAD00), // Color of the button
                    ),
                    child: Text(""), // Icon or any other child widget
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                      backgroundColor: Color(0xFF28211D), // Color of the button
                    ),
                    child: Text(""), // Icon or any other child widget
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color: Color(0xFFE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                      backgroundColor: Color(0xFFE8E9EA), // Color of the button
                    ),
                    child: Text(""), // Icon or any other child widget
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // -------------------------------following method is for size selection---------------------------

  Widget sizeSelector(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.87,
      height: MediaQuery.of(context).size.height * 0.11,
      // color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Container(
                width: 42,
                height: 40,
                decoration: BoxDecoration(
                  // color: Color(0xFFFDAD00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Text(
                    "38",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 42,
                height: 40,
                decoration: BoxDecoration(
                  // color: Color(0xFFFDAD00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Text(
                    "40",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 42,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFFDAD00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    "42",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 42,
                height: 40,
                decoration: BoxDecoration(
                  // color: Color(0xFFFDAD00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Text(
                    "44",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: 42,
                height: 40,
                decoration: BoxDecoration(
                  // color: Color(0xFFFDAD00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Text(
                    "48",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }

// ------------------------------following method is for the bottom price and cart button----------------
  Widget priceAndCart(BuildContext context) {
    double price1 = double.parse(price);
    String price2 = price1.toStringAsFixed(2);
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.102,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              "\$${price2}",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 25.0,
            ),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                color:  Color(0xFFFDAD00),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cart(cartItems: cartItems)));
                  },
                  child: Image.asset('assets/images/bookCart.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
