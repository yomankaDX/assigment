import 'package:flutter/material.dart';

class Second_screen extends StatelessWidget {
  final name;
  final image;
  const Second_screen({super.key, this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset(image),
                  ),
                ),
              ),
              Text(
                '$name',
                style: TextStyle(fontSize: 27),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('back'))
            ],
          ),
        ),
      ),
    );
  }
}
