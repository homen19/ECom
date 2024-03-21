import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Track Order",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        child: Column(
          children: [
            mapContainer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            trackDetails(),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.04,
                child: Text(
                  "Delivery Man",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            deliveryMan(),
          ],
        ),
      ),
    );
  }

  Widget mapContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.385,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(26.0994341, 91.5987834),
            zoom: 11.0, // Initial zoom level
          ),
        ),
      ),
    );
  }

  Widget trackDetails() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.33,
      decoration: BoxDecoration(
        color: Color(0xFF4A4A49),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      "1.5 KM",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      "15 Mins",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // -----------------------------first distance time part is finished---------------------
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ----------------left side bullet point like structure column------------------
                Column(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.circle,
                        color: Colors.amber,
                        size: 18,
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 33,
                      color: Colors.white,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.circle,
                        color: Color(0xFFD4D0D0),
                        size: 15,
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 33,
                      color: Colors.white,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.circle,
                        color: Color(0xFFD4D0D0),
                        size: 15,
                      ),
                    ),
                  ],
                ),
                // --------------------middle container-------------------------
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.21,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Processed by",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "Aditech Solution",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      Text(
                        "Delivery by",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "Rex Task",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      Text(
                        "Delivery Transit by",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "Johanos Thoman",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                // -----------------------Timer part start ---------------------
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "14.20",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "14.30",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "14.35",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget deliveryMan() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.08,
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Image.asset("assets/images/avatar.png"),
            ),
          ),
          // ------------image part is finished here------------------
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.07,
            // color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Janit Karim",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Delivery Man",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          // -------------------middle name part is finished here -----------
          Container(
            width: 43,
            height: 42,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
