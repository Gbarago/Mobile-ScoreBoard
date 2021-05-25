import 'package:flutter/material.dart';

class PlayerScores extends StatefulWidget {
  @override
  _PlayerScoresState createState() => _PlayerScoresState();
}

class _PlayerScoresState extends State<PlayerScores> {
  int _finalScore = 100;
//var check ;

  var _winningText = '';
  int _totalScoreP2 = 0;
  int _totalScoreP1 = 0;

  void _increasedScoreP1() {
    if (_totalScoreP2 < _finalScore && _totalScoreP1 < _finalScore) {
      setState(() {
        _totalScoreP1 = _totalScoreP1 + 10;
      });
    } else {
      setState(() {
        _winningText = 'player 1 wins';
        _totalScoreP1 = _totalScoreP1;
        // _totalScoreP2 = _totalScoreP2;
      });
    }
  }

  void _increasedScoreP2() {
    if (_totalScoreP1 != _finalScore && _totalScoreP2 < _finalScore) {
      setState(() {
        _totalScoreP2 = _totalScoreP2 + 10;
      });
    } else {
      setState(() {
        _winningText = 'player 2 wins';
        _totalScoreP2 = _totalScoreP2;
        //  _totalScoreP1 = _totalScoreP1;
      });
    }
  }

  void _resetScores() {
    setState(() {
      _totalScoreP1 = 0;
      _totalScoreP2 = 0;
      _winningText = '';
    });
  }

  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_winningText),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    width: 130,
                    height: 35,
                    child: Center(
                      child: Text(
                        'Player 1',
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '$_totalScoreP1',
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _increasedScoreP1,
                  child: Text('Add P1 Score'),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    width: 130,
                    height: 35,
                    child: Center(
                      child: Text(
                        'Player 2',
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '$_totalScoreP2',
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _increasedScoreP2,
                  child: Text('Add P2 Score'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 57,
        ),
        Container(
          child: ElevatedButton(
            onPressed: _resetScores,
            child: Text('RESET GAME'),
          ),
        )
      ],
    );
  }
}
