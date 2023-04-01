import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/models/food.dart';

class DetailsItems extends StatelessWidget {
  DetailsItems({super.key});

  late Food ItemFood;

  @override
  Widget build(BuildContext context) {
    this.ItemFood = ModalRoute.of(context)!.settings.arguments as Food;
    return Scaffold(
      appBar: AppBar(
        title: Text(ItemFood.name),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            child: Image.network(ItemFood.urlName),
            padding: EdgeInsets.all(10),
          ),
          Text("Ingredients", style: TextStyle(fontSize: 20)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: ItemFood.ingredients.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(child: Text(index.toString())),
                      title: Text(
                        ItemFood.ingredients[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
