import 'package:flutter/material.dart';
class FooterMenu extends StatelessWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 60,
                width: 320,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF76777E),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Text('Принять Товар', textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
                width: 320,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF76777E),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Text('История продаж', textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )),
              )
            ],
          ),
          SizedBox(width: 20),
          VerticalDivider(thickness: 2),
          SizedBox(width: 20),
          Column(
            children: [
              Container(
                height: 60,
                width: 320,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF33C9DD),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Text('Принять Товар', textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
                width: 320,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF33C9DD),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Text('История продаж', textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )),
              )
            ],
          ),
          SizedBox(width: 85),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Итого: ',
                  textAlign: TextAlign.start, style: TextStyle(
                    fontSize: 35,
              )),
              Text('343 640тг',
                  textAlign: TextAlign.start, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
              ))
            ],
          )
        ],
      ),
    );
  }
}
