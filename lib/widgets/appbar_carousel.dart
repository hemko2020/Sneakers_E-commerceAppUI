import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sneakersapp/dummy/dummySneakers.dart';
import 'package:sneakersapp/tools/custom_color.dart';
import 'carouselCard.dart';

class AppBarCarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 300,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: size.width,
              height: 200,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(color3),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    child: Text(
                      "Sneakers",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(color1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(color8),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: SizedBox(
              width: size.width,
              height: 170,
              child: Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Swiper(
                  itemCount: dummySneakers.length,
                  autoplay: true,
                  pagination: SwiperPagination(),
                  itemBuilder: (context, index) {
                    var carouselImages = dummySneakers[index];
                    return CarouselCard(
                      sneakers: carouselImages,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
