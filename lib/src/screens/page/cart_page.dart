import 'package:flutter/material.dart';

import 'package:groceries_app/src/constants/colors.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';
import 'package:groceries_app/src/widget/product_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Giỏ hàng',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              color: AppColors.greyColor,
              height: 0.2,
            )),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: ListView.separated(
              itemCount: 6,
              separatorBuilder: (context, index) => Divider(
                height: 0.2,
                color: Colors.grey[300],
              ),
              itemBuilder: (context, index) => ProductCart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: ReposiveButton(
                    text: 'Đến thanh toán',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
