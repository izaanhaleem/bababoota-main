import 'package:baba_boota/constant/colors.dart';
import 'package:flutter/material.dart';

class ColorsOption extends StatefulWidget {
  const ColorsOption({Key? key}) : super(key: key);

  @override
  _ColorsOptionState createState() => _ColorsOptionState();
}

class _ColorsOptionState extends State<ColorsOption> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.8,
        minChildSize: 0.5,
        maxChildSize: 0.8,
        builder: (_, controller) {
          return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView(
                  children: [
                    ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      trailing: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                    Center(
                        child: Text(
                      "Select Options",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                    Divider(
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Select Color"),
                    Row(
                      children: [
                        _chooseColors(),
                        _chooseColors(),
                        _chooseColors(),
                        _chooseColors(),
                      ],
                    )
                  ],
                ),
              ));
        });
  }

  Stack _chooseColors() {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
            top: 5,
            left: 5,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: fConformOrderColor, shape: BoxShape.circle),
            ))
      ],
    );
  }
}
