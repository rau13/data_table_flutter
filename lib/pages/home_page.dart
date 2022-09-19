import 'package:flutter/material.dart';
import 'package:table_widget/widgets/orders_card.dart';
import 'package:table_widget/widgets/pop_up_menu_cancel.dart';
import 'package:table_widget/widgets/pop_up_menu_notenough.dart';
import 'package:table_widget/widgets/pop_up_menu_resources_added.dart';
import 'package:table_widget/widgets/pop_up_menu_success.dart';





class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderCard(company: 'ТОО НурАс', orderNumber: '0205122341', orderCount: '1 500', orderPrice: '1 500 000')
    );
  }
}
