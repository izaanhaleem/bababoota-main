import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Cart/cart_screen.dart';
import 'package:baba_boota/views/Home/component/icon_btn_with_counter.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(37.773972, -122.431297), zoom: 10);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconBtnWithCounter(
                  icon: Icons.shopping_cart_outlined,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()));
                  }),
            )
          ],
        ),
        backgroundColor: fBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    const GoogleMap(
                      myLocationButtonEnabled: true,
                      zoomControlsEnabled: false,
                      initialCameraPosition: _initialCameraPosition,
                    ),
                    Positioned(
                        top: 20.0,
                        right: 15.0,
                        left: 15.0,
                        child: Container(
                            height: 50.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(1.0, 5.0),
                                    blurRadius: 10,
                                    spreadRadius: 3)
                              ],
                            ),
                            child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  icon: Container(
                                    margin:
                                        const EdgeInsets.only(left: 20, top: 0),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(
                                      Icons.location_on,
                                      color: Colors.green,
                                    ),
                                  ),
                                  hintText: "pick up",
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(
                                      left: 15.0, top: 12.0),
                                )))),
                    Positioned(
                      bottom: 10,
                      left: MediaQuery.of(context).size.width * 0.16,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Confirm Location",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          style: simpleButton(fBtnColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
