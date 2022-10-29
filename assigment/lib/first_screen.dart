import 'package:assigment/second.dart';
import 'package:flutter/material.dart';

class First_screen extends StatelessWidget {
  const First_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          child: Image.asset('lib/assets/yo.jpeg'),
        ),
        Text(
          'Abdirahman abdikadir farah',
          style: TextStyle(fontSize: 30),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Second_screen(
                              name: 'abdirahman abdikadir farah',
                              image: 'lib/assets/yo.jpeg',
                            )));
              },
              child: Text(
                'Go to second screen',
              )),
        )
      ]),
    );
  }
}
