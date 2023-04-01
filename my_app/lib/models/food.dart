import 'dart:math';

class Food {
  late int id;
  late String name;
  late String urlName;
  late Duration duration;
  late Complexity complexity;

  List<String> ingredients = [];
  late int CategoryId;

  Food(this.name, this.urlName, this.duration, this.complexity,
      this.ingredients, this.CategoryId) {
    this.id = Random().nextInt(10000);
  }
}

enum Complexity { Simple, Medium, Hard }
