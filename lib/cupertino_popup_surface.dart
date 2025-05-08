import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Import for the TextStyle

class CupertinoPopupsurface extends StatelessWidget {
  const CupertinoPopupsurface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          'CupertinoPopupSurface',
          style: TextStyle(
            // Use TextStyle from material.dart
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xff9e85a8).withOpacity(1.0),
      ),
      child: SafeArea(
        // Wrap the button in SafeArea
        child: Center(
          child: CupertinoButton(
            child: const Text("Click Me"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext builder) {
                  return CupertinoPopupSurface(
                    child: Container(
                      color: CupertinoColors.white,
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 400,
                      child: Center(
                        child: CupertinoButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
