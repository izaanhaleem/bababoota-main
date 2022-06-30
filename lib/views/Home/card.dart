import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/views/Home/add_a_card.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: fBackgroundColor,
          // ignore: unnecessary_const
          body: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(top: 10, right: 10),
                title: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "BABA",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "BOOTA",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                trailing: const InkWell(
                  child: Text(
                    'Add a New Card',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CardTile(
                context,
                'Name Card 1',
                '**** **** **** 5234',
                () {},
              ),
              CardTile(
                context,
                'Name Card 2',
                '**** **** **** 5234',
                () {},
              ),
              CardTile(
                context,
                'Name Card 3',
                '**** **** **** 5234',
                () {},
              ),
              CardTile(
                context,
                'Name Card 4',
                '**** **** **** 5234',
                () {},
              )
            ],
          )),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CardTile(
    BuildContext context,
    String? title,
    String? subTitle,
    VoidCallback onPressed,
  ) {
    return Card(
      elevation: 5,
      //height: MediaQuery.of(context).size.height * 0.17,
      color: Colors.white,
      child: ListTile(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddACard(),
            ),
          );
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        contentPadding: const EdgeInsets.all(15),
        title: Row(
          children: [
            Text(
              title!,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        subtitle: Text(
          subTitle!,
          style: const TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        trailing: const Text(
          'Edit',
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
