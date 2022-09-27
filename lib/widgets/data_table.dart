import 'package:flutter/material.dart';
import 'package:table_widget/classes/Order.dart';
import 'package:table_widget/databases/table_databases.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({Key? key}) : super(key: key);
  List<DataColumn> _createColumns() {
    return [
      DataColumn(label:
      Text('Штрих код', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Товар',textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Ед',textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Кол-во',textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Цена за шт',textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Сумма', textAlign: TextAlign.center))

    ];
  }



  @override
  Widget build(BuildContext context) {
    Orders orders = Orders();
    List<Order> orders_list = orders.orders;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
            headingTextStyle: TextStyle(color: Colors.white),
            showBottomBorder: true,
            dividerThickness: 2,

            headingRowColor: MaterialStateProperty.resolveWith((states) => Colors.black),
          columnSpacing: 10,
          headingRowHeight: 30,
          columns: _createColumns(),
          rows: orders_list.map<DataRow>((order) => DataRow(cells: [
            DataCell(Text(order.barCode.toString())),
            DataCell(VerticalDivider(thickness: 2)),
            DataCell(Text(order.product.toString())),
            DataCell(VerticalDivider(thickness: 2)),
            DataCell(Text(order.unit.toString())),
            DataCell(VerticalDivider(thickness: 2)),
            DataCell(Center(child: Text(order.amount.toString()))),
            DataCell(VerticalDivider(thickness: 2)),
            DataCell(Text(order.priceForOne.toString())),
            DataCell(VerticalDivider(thickness: 2)),
            DataCell(Text(order.sum.toString()))
          ])).toList()
        ),
      )
    );
  }
}

