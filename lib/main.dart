import 'package:counter_provider/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => CounterModel(), child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The type of 'counter' is CounterModel
    final counter = Provider.of<CounterModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: () => counter.increment(), child: Text("Increment")),
                FlatButton(onPressed: () => counter.decrement(), child: Text("Decrement")),
              ],
            ),
            Text(counter.currentCount.toString())
          ],
        ),
      ),
    );
  }
}
