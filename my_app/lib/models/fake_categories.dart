import 'package:flutter/foundation.dart';

import 'categories.dart';
import 'package:flutter/material.dart';
import 'food.dart';

var FAKE_CATEGORIES = [
  CategoryModel(id: "1", content: 'Initital', color: Colors.red),
  CategoryModel(id: "2", content: 'Ban Đầu,Khởi Đầu', color: Colors.blue),
  CategoryModel(id: "3", content: 'Slider', color: Colors.indigo),
  CategoryModel(id: "4", content: 'Thanh Trượt', color: Colors.cyan),
  CategoryModel(id: "5", content: 'Shape', color: Colors.green),
  CategoryModel(id: "6", content: 'Hình dạng', color: Colors.blueGrey),
  CategoryModel(id: "7", content: 'Expand', color: Colors.orange),
  CategoryModel(id: "8", content: 'Nới rộng ,mở rộng', color: Colors.pink),
  CategoryModel(id: "9", content: 'Ensure', color: Colors.deepPurple),
  CategoryModel(id: "10", content: 'Đảm bảo', color: Colors.teal),
  CategoryModel(id: "11", content: 'Initial', color: Colors.purpleAccent),
  CategoryModel(id: "12", content: 'Ban đầu', color: Colors.lightBlue),
];

var FAKE_FOODITEMS = [
  Food(
      "Initial : Ban đầu, khởi đầu",
      "https://haycafe.vn/wp-content/uploads/2022/03/anh-do-an.jpg",
      Duration(days: 4, hours: 3),
      Complexity.Simple,
      [
        "AAA",
        "BBB",
        "CCC",
        "dokasodksaodkaoskdosakdosakdosakdokasodkasodasodk",
        "dasodkasodkas",
        "dasid9asid9asdia9sid",
        "dkasodkasodkasodk",
        "adokasodksaodk"
      ],
      1),
  Food(
      "Shape : Hình dạng",
      "https://haycafe.vn/wp-content/uploads/2022/03/Hinh-anh-do-an-nghe-thuat.jpg",
      Duration(days: 4, hours: 3),
      Complexity.Hard,
      ["AAA", "BBB", "CCC"],
      2),
  Food(
      "Ensure : Chắc Chắn",
      "https://haycafe.vn/wp-content/uploads/2022/03/Hinh-anh-do-an-nghe-thuat.jpg",
      Duration(days: 4, hours: 3),
      Complexity.Medium,
      ["AAA", "BBB", "CCC"],
      1),
  Food(
      "Expand : Mổ rộng , nới rộng",
      "https://haycafe.vn/wp-content/uploads/2022/03/Hinh-anh-do-an-nghe-thuat.jpg",
      Duration(days: 4, hours: 3),
      Complexity.Medium,
      ["AAA", "BBB", "CCC"],
      1),
  Food(
      "Vertical : Chiều dọc ",
      "https://haycafe.vn/wp-content/uploads/2022/03/Hinh-anh-do-an-nghe-thuat.jpg",
      Duration(days: 4, hours: 3),
      Complexity.Simple,
      ["AAA", "BBB", "CCC"],
      3),
];
