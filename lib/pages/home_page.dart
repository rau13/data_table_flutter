import 'package:flutter/material.dart';
import 'package:table_widget/widgets/data_table.dart';
import 'package:table_widget/widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FooterMenu()
    );
  }
}
