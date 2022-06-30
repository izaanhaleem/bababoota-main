import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Home/card.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Baba",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Boota",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, top: 20, bottom: 15),
                child: Text(
                  "Payment Methods",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  children: [
                    ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppCard(),
                            ),
                          );
                        },
                        trailing:
                            Icon(Icons.chevron_right, color: Colors.black),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        tileColor: Colors.white,
                        selectedTileColor: Colors.yellow,
                        title: Text('Credit/Debit Cards'),
                        leading: Icon(Icons.payment)),
                    ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        tileColor: Colors.white,
                        trailing:
                            Icon(Icons.chevron_right, color: Colors.black),
                        selectedTileColor: Colors.yellow,
                        title: Text('EasyPaisa'),
                        leading: Icon(Icons.payment)),
                    ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        tileColor: Colors.white,
                        trailing:
                            Icon(Icons.chevron_right, color: Colors.black),
                        selectedTileColor: Colors.yellow,
                        title: Text('Jazzcash'),
                        leading: Icon(Icons.payment)),
                    ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        tileColor: Colors.white,
                        trailing:
                            Icon(Icons.chevron_right, color: Colors.black),
                        selectedTileColor: Colors.yellow,
                        title: Text('Bank Alfalah'),
                        leading: Icon(Icons.payment)),
                    ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        tileColor: Colors.white,
                        trailing:
                            Icon(Icons.chevron_right, color: Colors.black),
                        selectedTileColor: Colors.yellow,
                        title: Text('Baba Boota Account Balance'),
                        leading: Icon(Icons.payment)),
                    ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        tileColor: Colors.white,
                        trailing:
                            Icon(Icons.chevron_right, color: Colors.black),
                        selectedTileColor: Colors.yellow,
                        title: Text('Cash On Delivery'),
                        leading: Icon(Icons.payment)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
