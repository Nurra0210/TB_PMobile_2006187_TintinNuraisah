import 'package:flutter/material.dart';
import 'package:spending_app/widgets/explanation_widget.dart';

import '../data/data.dart';

class ExpenseCategoryScreen extends StatelessWidget {
  const ExpenseCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Kategori Pengeluaran"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: expenseCategoryList.map((item) {
          return ExplanationWidget(
            title: item.title,
            subtitle: item.description,
            color: item.color,
          );
        }).toList(),
      ),
    );
  }
}
