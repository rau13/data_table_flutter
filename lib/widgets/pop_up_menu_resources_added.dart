import 'package:flutter/material.dart';
import 'dart:ui';

class PopUpMenuAdded extends StatelessWidget {
  const PopUpMenuAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
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
                      Image.asset('assets/images/success_vector.png', width: 190,),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Text('Товары добавлены в склад',textAlign: TextAlign.center, style:
                        TextStyle(
                            fontSize: 28,
                            color: Color(0xFF4CAF50),
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      SizedBox(height: 35),
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
