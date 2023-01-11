import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController amt = TextEditingController();
  TextEditingController prsn = TextEditingController();
  double result = 0;
  void split() {
    double a = double.parse(amt.text);
    double p = double.parse(prsn.text);
    double ans = a / p;
    result = ans;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SPLIT EXPENCE'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: amt,
                  decoration: InputDecoration(
                      labelText: 'Enter amount', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: prsn,
                  decoration: InputDecoration(
                    labelText: 'No.of members',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {split();},
                child: Text('split'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan)),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.pink,
                child: Text('${result.toStringAsFixed(2)}'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
