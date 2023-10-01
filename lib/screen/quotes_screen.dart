import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    Global.g1.quotesList.map((e) {
      QuotesModel q1 = QuotesModel.fromMap(e);
      Global.g1.modelList.add(q1);
    }).toList();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade700,
          title: Text(
            "Quotes",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            IconButton(onPressed: (){
              showDialog(context: context,barrierDismissible: false, builder: (context){
                return AlertDialog(
                  title: Text("Do you want to exit?"),
                  actions: [
                    ElevatedButton(onPressed: (){
                      SystemNavigator.pop();
                    }, child: Text("yes")),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No")),
                  ],
                );
              });
            }, icon: Icon(Icons.add))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: Global.g1.modelList.map((e) => quotesTile(h, w,e)).toList(),
          ),
        ),
      ),
    );
  }

  Container quotesTile(double h, double w, QuotesModel q1) {
    return Container(
      padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: h * 0.20,
            width: w,
            decoration: BoxDecoration(color: Colors.yellow.shade200,borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${q1.quotes}",
                  style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                ),
                Text(
                  "- ${q1.author}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          );
  }
}