import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/item_page.dart';
import 'package:my_app/models/categories.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.modelCategory});
  CategoryModel modelCategory;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => ItemPage(
        //               cateModel: modelCategory,
        //             )));

        Navigator.pushNamed(context, '/ItemPage',
            arguments: {'category': modelCategory});
      },
      borderRadius: BorderRadius.circular(25),
      splashColor: Colors.amber,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: modelCategory.color,
          gradient: LinearGradient(colors: [
            modelCategory.color.withOpacity(0.6),
            modelCategory.color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        alignment: Alignment.center,
        child: Text(
          modelCategory.content,
          style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
              shadows: [
                Shadow(
                    color: Colors.black38, offset: Offset(0, 4), blurRadius: 4)
              ]),
        ),
      ),
    );
  }
}
