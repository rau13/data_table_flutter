import 'package:flutter/material.dart';
import 'package:table_widget/widgets/data_table.dart';
import 'package:table_widget/widgets/footer.dart';

class OrderTablePage extends StatefulWidget {
  const OrderTablePage({Key? key}) : super(key: key);

  @override
  State<OrderTablePage> createState() => _OrderTablePageState();
}

class _OrderTablePageState extends State<OrderTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              SizedBox(
                width: double.infinity,
                child: MyDataTable(),
              ),

                  Container(
                    alignment: Alignment.bottomCenter,
                      height: 155,
                      width: double.infinity,
                      child: FooterMenu()),
            ],
    ),
    ),
    );
  }
}
