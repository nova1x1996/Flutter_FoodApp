import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/detail_item.dart';
import 'package:my_app/models/categories.dart';
import 'package:my_app/models/food.dart';
import 'package:my_app/models/fake_categories.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  late CategoryModel modelCate;

  @override
  Widget build(BuildContext context) {
    final List<Food> oldListFood = FAKE_FOODITEMS;
    Map<String, CategoryModel> model = ModalRoute.of(context)!
        .settings
        .arguments as Map<String, CategoryModel>;
    this.modelCate = model['category']!;
    var newListFood = oldListFood
        .where((element) => element.CategoryId.toString() == modelCate.id)
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(modelCate.content),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Container(
          child: (!newListFood.isEmpty)
              ? ListView.builder(
                  itemCount: newListFood.length,
                  itemBuilder: (context, index) {
                    var foodItem = newListFood[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) {
                                return DetailsItems();
                              },
                              settings: RouteSettings(arguments: foodItem)),
                        );
                      },
                      child: Stack(children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: FadeInImage.assetNetwork(
                              placeholder: 'asset/ImageGif/LoadingGif.gif',
                              image: foodItem.urlName,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            right: 20,
                            child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  foodItem.name,
                                  style: TextStyle(fontSize: 22),
                                ))),
                        Positioned(
                          right: 20,
                          top: 20,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.brown,
                            ),
                            child: Text(
                              foodItem.complexity.name.toString(),
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  color: Colors.white,
                                ),
                                Text(
                                  foodItem.duration.inMinutes.toString() +
                                      " minutes ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    );
                  },
                )
              : Text(
                  "No Food Found",
                  style: TextStyle(fontSize: 25),
                ),
        ));
  }
}
