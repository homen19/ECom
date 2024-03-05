import 'package:flutter/material.dart';
import 'package:shoeshop/Screen/DetailsScreen.dart';
import 'package:shoeshop/Services/Data.dart';
import 'package:shoeshop/Widgets/CustomCard.dart';

class CartItem {
  late String name;
  late int quantity;
  late String price;
  late String typeShoe;
  late String imgPath;

  CartItem({
    required this.name,
    required this.quantity,
    required this.price,
    required this.typeShoe,
    required this.imgPath,
  });
  @override
  String toString() {
    return 'CartItem{name: $name, quantity: $quantity, price: $price, typeShow : $typeShoe, imgPath : $imgPath}';
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<CartItem> cartItems = [];
// ------------method to add items in cartItem Array--------
  void addToCart(CartItem item) {
    setState(() {
      cartItems.add(item);
      print(cartItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0x60000000),
                            ),
                          ),
                          Text(
                            "Homen Nath",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/menu.png'),
                      ),
                    ),
                  ],
                ),
              ),
              filterButtonContainer(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              productContainer(context),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFF4EC),
    );
  }

  Widget filterButtonContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFDAD00),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text("All"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Nike",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Puma",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Adidas",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
//  ------------------------product container--------------------

  Widget productContainer(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (BuildContext context, int index) {
            String name = myList[index]['name'];
            String imgPath = myList[index]['image'];
            String price = myList[index]['price'];
            String typeShoe = myList[index]['type'];
            String description = myList[index]['description'];
            String rating = myList[index]['rating'];

            return Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.23,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(name, imgPath, typeShoe,
                          price, description, rating, cartItems),
                    ),
                  );
                },
                child: CustomCard(
                  name: name,
                  typeShoe: typeShoe,
                  price: price,
                  imgPath: imgPath,
                  cartItem: cartItems,
                  addToCart: addToCart,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
