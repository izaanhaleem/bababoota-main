import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/Home/component/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ProductCatagories extends StatefulWidget {
  const ProductCatagories({Key? key}) : super(key: key);

  @override
  _ProductCatagoriesState createState() => _ProductCatagoriesState();
}

class _ProductCatagoriesState extends State<ProductCatagories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: MediaQuery.of(context)
                .size
                .width /
                (MediaQuery.of(context).size.height /
                    1.2),
            crossAxisSpacing: 5,
            mainAxisSpacing: 15),
        itemCount: catagories.length,
        itemBuilder: (context, index) => CategoryCard(
          listModel: catagories[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                listModel: list[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class CategoryCard extends StatelessWidget {
  final ListModel listModel;
  final VoidCallback press;

  const CategoryCard({Key? key, required this.listModel, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(listModel.image!),
            Text(listModel.name!)
          ],
        ),
      ),
    );
  }
}
