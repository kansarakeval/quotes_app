import 'package:flutter/material.dart';
import 'package:quotes_app/util/QuotesModel.dart';
import 'package:quotes_app/util/global.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  void initState() {
    super.initState();

    Global.g1.quotesList.map((e){
      QuotesModel q1 = QuotesModel.fromMap(e);
      Global.g1.modelLis.add(q1);
    });
  }
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
