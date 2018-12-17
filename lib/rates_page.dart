import 'package:flutter/material.dart';

//https://github.com/tensor-programming/flutter_calc_layout/blob/master/lib/main.dart
class RatesPage extends StatelessWidget {
  final String title;

  RatesPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(9.0),
            color: Colors.white.withOpacity(0.85),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Курс обмена наличной иностранной валюты действует с 10:20 ч. 17 декабря 2018 г.",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 13.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            child: Column(
              children: <Widget>[
                makeTitle("Покупка", "Продажа"),
                makeBtns('USD', "12.6", "12.7"),
                makeBtns('EUR', "12.6", "12.7"),
                makeBtns('RUB', "12.6", "12.7"),
                makeBtns('KZT', "12.6", "12.7"),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget makeTitle(
    String row1,
    String row2,
  ) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleText(
            keyvalue: "",
          ),
          TitleText(
            keyvalue: row1,
          ),
          TitleText(
            keyvalue: row2,
          )
        ],
      ),
    );
  }

  Widget makeBtns(
    String row1,
    String row2,
    String row3,
  ) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CalcButton(
            keyvalue: row1,
          ),
          CalcButton(
            keyvalue: row2,
          ),
          CalcButton(
            keyvalue: row3,
          )
        ],
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  CalcButton({this.keyvalue});

  final String keyvalue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        shape: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        color: Colors.white,
        child: Text(
          keyvalue,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 26.0,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  TitleText({this.keyvalue});

  final String keyvalue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Text(
          keyvalue,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18.0,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
