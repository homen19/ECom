import 'package:flutter/material.dart';
import 'package:shoeshop/Screen/DetailsScreen.dart';
import 'package:shoeshop/Screen/HomeScreen.dart';
import 'package:shoeshop/Widgets/CustomCard.dart';

class Cart extends StatelessWidget {
  final List<CartItem> cartItems;
  Cart({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        leading: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black26),
                  )),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black54,
                size: 19,
              ),
            ),
          ),
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDAD00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          print(cartItems);
                        },
                        child: Image.asset('assets/images/bookCart.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  // left: 0.5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      cartItems.length.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 1.0,
            // height: MediaQuery.of(context).size.height * 1.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final cartItem = cartItems[index];
                      return Center(
                        child: Card(
                          elevation: 1,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text("abc"),
                                    Text("abc"),
                                    Text("abc"),
                                    Row(
                                      children: [
                                        Icon(Icons.remove),
                                        Text("1"),
                                        Icon(Icons.add),
                                      ],
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      child: Text("abc"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
      ),
      // backgroundColor: Colors.amber,
    );
  }
}
