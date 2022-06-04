import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCausal extends StatelessWidget {
  final List<Widget>? listCausalImages;
  const CustomCausal({ Key? key,this.listCausalImages }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
              items: listCausalImages,
              options: CarouselOptions(
                height: 230,
                viewportFraction: 1.0,
                // enlargeCenterPage:true,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            );
  }
}