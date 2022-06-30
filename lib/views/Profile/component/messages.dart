import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';

import '../../Home/component/icon_btn_with_counter.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: subAppBarMain(context)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Messages",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Expanded(
                  child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Container(
                    height: 4,
                  );
                },
                itemCount: list.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    dense: true,
                    title: Text(
                      list[index].name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(list[index].date),
                    trailing: Icon(
                      list[index].iconData,
                      color: Colors.black,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
