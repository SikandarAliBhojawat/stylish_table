import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_table/stylish_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleData = [
    "ID",
    "BetAmount",
    "Win/Loss",
    "Result",
  ];

  final Map<String, Map<String, String>> tableData = {
    'row1' : { 'id' : 'ID1', 'betAmount' : '500', 'winLoss' : '+1500', 'result' : 'Win' },
    'row2' : { 'id' : 'ID2', 'betAmount' : '100', 'winLoss' : '-100', 'result' : 'Loss' },
    'row3' : { 'id' : 'ID3', 'betAmount' : '300', 'winLoss' : '-100', 'result' : 'Loss' },
    'row4' : { 'id' : 'ID4', 'betAmount' : '50', 'winLoss' : '+500', 'result' : 'Win' },
    'row5' : { 'id' : 'ID5', 'betAmount' : '700', 'winLoss' : '-700', 'result' : 'Loss' },
    'row6' : { 'id' : 'ID6', 'betAmount' : '500', 'winLoss' : '+1500', 'result' : 'Win' },
    'row7' : { 'id' : 'ID7', 'betAmount' : '100', 'winLoss' : '-100', 'result' : 'Loss' },
    'row8' : { 'id' : 'ID8', 'betAmount' : '300', 'winLoss' : '-100', 'result' : 'Loss' },
    'row9' : { 'id' : 'ID9', 'betAmount' : '50', 'winLoss' : '+500', 'result' : 'Win' },
    'row10' : { 'id' : 'ID10', 'betAmount' : '700', 'winLoss' : '-700', 'result' : 'Loss' },
    'row11' : { 'id' : 'ID11', 'betAmount' : '500', 'winLoss' : '+1500', 'result' : 'Win' },
    'row12' : { 'id' : 'ID12', 'betAmount' : '100', 'winLoss' : '-100', 'result' : 'Loss' },
    'row13' : { 'id' : 'ID13', 'betAmount' : '300', 'winLoss' : '-100', 'result' : 'Loss' },
    'row14' : { 'id' : 'ID14', 'betAmount' : '50', 'winLoss' : '+500', 'result' : 'Win' },
    'row15' : { 'id' : 'ID15', 'betAmount' : '700', 'winLoss' : '-700', 'result' : 'Loss' },
    'row16' : { 'id' : 'ID16', 'betAmount' : '700', 'winLoss' : '-700', 'result' : 'Loss' },
    'row17' : { 'id' : 'ID17', 'betAmount' : '700', 'winLoss' : '-700', 'result' : 'Loss' },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StylishTable(
        tableData: tableData,
        titleData: titleData,
        titleBackgroundColor: Colors.black,
        titleTextColor: Colors.white,
        rowTextColor: Colors.white70,
        // tableBodyHeight: double.infinity,
        // tableBodyWidth: double.infinity,
        // tableRowHeight: 45,
        // titleRowHeight: 45,
        // firstRowColor: Colors.green,
        // secondRowColor: Colors.black38,
      ),
    );
  }
}