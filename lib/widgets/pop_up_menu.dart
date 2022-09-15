import 'dart:ui';

import 'package:flutter/material.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child:BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: AlertDialog(
            shape: RoundedRectangleBorder(
                side:new  BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),

            ),
            title: Text('Получено от клиента:'),
            content:Column(
                  children: [
                    
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 40,
                      alignment: Alignment.centerLeft,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black
                        ),
                      ),
                      child: Text(' 2000', style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Column(
                      children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Получено:', textAlign: TextAlign.start,),

                          Text('2000 тг', textAlign: TextAlign.end, style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ],
                      ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('К оплате:'),
                            Text('1500 тг', style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            )
                          ],

                        )
                    ],
                    ),

                    Divider(thickness: 2, color: Color(0xFF494A53),),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Сдача:'),
                        Text('500 тг', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF70BF73),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('Без сдачи',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),

                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.center,
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF33C9DD),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('Выдать чек',
                          style: TextStyle(
                            color: Colors.white,
                          )
                      ),

                    ),
                  ],
                ),
            ),
      ),
    );
  }
}
