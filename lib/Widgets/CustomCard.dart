import 'package:flutter/material.dart';
import 'package:shoeshop/Screen/HomeScreen.dart';

class CustomCard extends StatefulWidget {
  final String name;
  final String typeShoe;
  final String price;
  final String imgPath;
  final List<CartItem> cartItem;
  final void Function(CartItem) addToCart;

  CustomCard({
    required this.name,
    required this.typeShoe,
    required this.price,
    required this.imgPath,
    required this.cartItem,
    required this.addToCart,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.brown,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: SizedBox(
              width: 135,
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.typeShoe,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  Text(
                    "\$${widget.price}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: SizedBox(
              width: 155,
              height: 135,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    // top: 10,
                    right: 13,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Image.asset(widget.imgPath),
                  ),
                  Positioned(
                      right: MediaQuery.of(context).size.width * 0.00,
                      top: MediaQuery.of(context).size.height * 0.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_border_rounded,
                          size: 27,
                          color: Color(0xFFFDAD00),
                        ),
                      )),
                  Positioned(
                    bottom: 2,
                    right: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFDAD00),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            widget.addToCart(CartItem(
                                name: widget.name,
                                quantity: 1,
                                price: widget.price,
                                typeShoe: widget.typeShoe,
                                imgPath: widget.imgPath));
                          },
                          child: Image.asset(
                              'assets/images/solar_cart-5-linear.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
