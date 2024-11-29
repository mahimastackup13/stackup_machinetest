import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class Counter_Screen extends StatelessWidget {
  const Counter_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'counter value',
            style: TextStyle(
                color: Color(0xFFFF9000),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Consumer<Counter>(
            builder: (context, provider, child) {
              return Text(
                '${provider.count}',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              );
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.read<Counter>().incrementCounter(),
                child: Text(
                  'Increment',
                  style: TextStyle(
                      color: Color.from(
                          alpha: 1, red: 0.063, green: 0.6, blue: 0.161)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => context.read<Counter>().decrementCounter(),
                child: Text(
                  'Decrement',
                  style: TextStyle(color: Color.fromRGBO(190, 14, 11, 1)),
                ),
              ),
            ],
          )
        ],
      ))),
    );
  }
}
