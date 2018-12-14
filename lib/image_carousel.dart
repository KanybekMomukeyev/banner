import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = Carousel(
      boxFit: BoxFit.cover,
      images: [
        NetworkImage(
            'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
        NetworkImage(
            'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
        NetworkImage(
            'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
        NetworkImage(
            'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    return Center(
      child: Container(
        padding: const EdgeInsets.all(5.0),
        height: screenHeight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Stack(
            children: [carousel],
          ),
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body: Center(
    //     child: Container(
    //       padding: const EdgeInsets.all(5.0),
    //       height: screenHeight / 2,
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(10.0),
    //         child: Stack(
    //           children: [carousel],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}
