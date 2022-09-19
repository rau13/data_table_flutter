import 'package:flutter/material.dart';

import '../widgets/orders_card.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            height: 75,
            child: Container(
              child: Row(

                children: [
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF76777E)
                        ),
                        child: Text('Главная страница', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)),
                  ),
                   Image.asset('assets/images/logo.png'),

                ],
              ),
            ),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(30),
               child: Text('Список заказов (3)', style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,

               ),),
             ),
           ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000'),
              OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000'),
              OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000')
            ],
          ),
        ],
      ),
    );
  }
}
