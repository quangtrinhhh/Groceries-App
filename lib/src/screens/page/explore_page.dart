import 'package:flutter/material.dart';
import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/screens/filters.dart';
import 'package:groceries_app/src/widget/card_product.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: AppColors.searchColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: TextField(
            onChanged: (value) {
              //sủ lý chức năng search
            },
            decoration: InputDecoration(
              hintText: 'Tìm kiếm',
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Filters(),
                    ));
              },
              icon: Icon(Icons.category_sharp))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 3 / 4,
          ),
          itemCount: 8,
          itemBuilder: (context, index) => CardProduct(),
        ),
      ),
    );
  }
}
