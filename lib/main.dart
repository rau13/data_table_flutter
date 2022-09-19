import 'package:flutter/material.dart';
import 'package:table_widget/pages/home_page.dart';
import 'package:table_widget/pages/orders_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'MontserratRegular',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable Demo'),
        ),
        body: const OrdersPage()
      ),
    );
  }
}


