import 'package:flutter/material.dart';
import 'image_carousel.dart';
import 'rates_page.dart';

class ComplexPage extends StatelessWidget {
  final String title;

  ComplexPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box = DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/sample_img.jpeg'),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/sample_img.jpeg',
          //width: 600.0,
          height: 70.0,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: ImageCarousel()),
              Container(
                  color: Colors.white,
                  height: 50.0,
                  width: 250.0,
                  child: RatesPage()),
            ],
          ),
        ),
      ],
    );
  }
}
