import 'package:flutter/material.dart';

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: StfulPage(),
          ),
        ),
      ),
    );
  }
}

class StfulPage extends StatefulWidget {
  @override
  _StfulPageState createState() => _StfulPageState();
}

class _StfulPageState extends State<StfulPage> {
  @override
  Widget build(BuildContext context) {
    List<bool> _isOpen = [false];

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ExpansionPanelList(
          children: [
            ExpansionPanel(
              headerBuilder: (context, isOpen) {
                return Text('HI');
              },
              body: Text('now open'),
              isExpanded: _isOpen[0],
            ),
          ],
          expansionCallback: (i, isOpen) {
            _isOpen[i] = !isOpen;
            setState(() {});
          },
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
