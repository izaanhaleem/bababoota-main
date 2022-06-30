import 'package:baba_boota/constant/colors.dart';
import 'package:baba_boota/model/list_model.dart';
import 'package:baba_boota/views/KidsFashion/KidsFashion.dart';
import 'package:baba_boota/views/MensFashion/Mencatagory.dart';
import 'package:baba_boota/views/WomensFashion/WomensFashion.dart';
import 'package:baba_boota/widget/widget.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fBackgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: appBarMain(context)),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: const [
                  Text(
                    "CATEGORIES",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "MOBILE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            // Middle expanded
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 2,
                        );
                      },
                      itemCount: Catagories.length,
                      itemBuilder: (context, index) => Container(
                        color: Colors.green,
                        child: ListTile(
                          title: Text(
                            Catagories[index].categories,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          onTap: (){
                            if(index==0){
                             TopCatagories(context);
                            }
                            if(index==1){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const WomensFashion()));
                            }
                            if(index==2){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const KidsFashion()));
                            }
                          },
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  "https://static.toiimg.com/thumb/msid-84737243,width-800,resizemode-4,imgsize-32189/share.jpg",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Boota Top Catagories",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // TopCatagories(context)
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height * 1.5),
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 15,),
                                itemCount: BootaTopPicks.length,
                                itemBuilder: (context, index) => CategoryCard(
                                    listModel: BootaTopPicks[index],
                                    press: () {
                                      if(index==0){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const MensShopCatagory()));
                                      }
                                      if(index==1){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WomensFashion()));
                                      }
                                      if(index==2){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const KidsFashion()));
                                      }
                                    }
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
             Text(listModel.categories!)
          ],
        ),
      ),
    );
  }
}

