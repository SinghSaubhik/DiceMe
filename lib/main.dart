import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatelessWidget {

  int leftImage = 1;
  int rightImage = 4;

  void changeNumber(){
    leftImage = 2;
    rightImage = 4;
  }

  @override
  Widget build(BuildContext context) {



    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: changeNumber,
                child: Image.asset('images/dice$leftImage.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  print("Right button got pressed.");
                },
                child: Image.asset('images/dice$rightImage.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
