import 'package:flutter/material.dart';

class Pract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.2,
          color: Colors.blue.shade200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: Text("+"),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: Text("+"),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: Text("+"),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: Text("+"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
