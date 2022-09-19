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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              height: 75,
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF76777E)
                          ),
                          child: Text('Главная страница', style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)),
                    ),
                      Image.asset('assets/images/logo.png', alignment: Alignment.centerRight,),

                  ],
                ),
              ),
            ),
           SizedBox(height: 30),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                Text('Список заказов (3)', style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold
                 )),

             ],
           ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000'),
                OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000'),
                OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
