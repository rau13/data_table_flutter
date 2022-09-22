import 'package:flutter/material.dart';

import '../widgets/orders_card.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  String _dropdownValue = "Неделя";
  void dropdownCallback(String? selectedValue){
    if(selectedValue is String){
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }
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

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ))),
                    ),
                      Image.asset('assets/images/logo.png', alignment: Alignment.centerRight,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text('Промежуток '),
                                SizedBox(width: 45,),
                                Container(
                                  height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFA4A5A9)
                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: DropdownButton(
                                      items: const [
                                        DropdownMenuItem(child: Text('Неделя'), value: 'Неделя'),
                                        DropdownMenuItem(child: Text('Месяц'), value: 'Месяц',),
                                        DropdownMenuItem(child: Text('Год'), value: 'Год',)
                                      ],
                                      value: _dropdownValue,
                                      onChanged: dropdownCallback,
                                    )
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Дата'),
                                Container(
                                  width: 100,
                                  height: 25  ,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)
                                      )
                                    ),
                                  ),
                                ),
                               SizedBox(
                                 width: 15,
                                 child: Divider(height: 45, thickness: 1.5,color: Color(0xFFA4A5A9),)),
                                Container(
                                  width: 100,
                                  height: 25  ,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
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
