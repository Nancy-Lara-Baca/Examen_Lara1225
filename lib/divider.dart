import 'package:flutter/material.dart';

class DivideR extends StatelessWidget {
  const DivideR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // <--- Wrap with Scaffold
      appBar: AppBar(
        // <--- Your AppBar code starts here
        title: const Text(
          'Divider',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xff9e85a8),
        centerTitle: true,
      ), // <--- Your AppBar code ends here
      body: Center(
        // The existing Center widget becomes the body
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.orange,
            ),
            const Divider(
              color: Colors.white,
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 40,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
