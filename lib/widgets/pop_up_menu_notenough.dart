import 'package:flutter/material.dart';
import 'dart:ui';
class PopUpMenuNotEnoughResources extends StatelessWidget {
  const PopUpMenuNotEnoughResources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 467,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(

            shape: RoundedRectangleBorder(
              side:new  BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            content: Column(
              children: [
                Container(
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/close-circle.jpg', height: 25, width: 25,)
                    ],
                  ),
                ),
                Container(
                  width: 450,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/cancel_vector.png', width: 190,),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Text('Недостаточно товаров',textAlign: TextAlign.center, style:
                        TextStyle(
                            fontSize: 28,
                            color: Color(0xFFFF0606),
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        height: 42,
                        width: 255,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF33C9DD)
                            ),
                            onPressed: (){},
                            child: Text('Сообщить о проблеме')),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
