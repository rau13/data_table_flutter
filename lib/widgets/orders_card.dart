import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:table_widget/pages/OrderTablePage.dart';

class OrderCard extends StatelessWidget {
  final String company;
  final String orderNumber;
  final String orderCount;
  final String orderPrice;
   OrderCard({Key? key, required this.company, required this.orderNumber, required this.orderCount, required this.orderPrice  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Поставщик:'),
                Text('${company}', style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Номер заказа:'),
                Text('$orderNumber', style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Количество товаров:'),
                Text('$orderCount шт',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Цена заказа:'),
                Text('$orderPrice тг',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                )
              ],
            ),
            SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF33C9DD)
                  ),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderTablePage()));
                  },
                  child: Text('Список товаров')),
            )
          ],
        ),
      ),
    );
  }
}
