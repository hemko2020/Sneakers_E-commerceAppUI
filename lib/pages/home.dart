import 'package:flutter/material.dart';
import 'package:sneakersapp/dummy/dummySneakers.dart';
import 'package:sneakersapp/tools/custom_color.dart';
import 'package:sneakersapp/widgets/appbar_carousel.dart';
import 'package:sneakersapp/widgets/category.dart';
import 'package:sneakersapp/widgets/sneakersCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            AppBarCarouselWidget(),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryTab(
                    name: "Category",
                    color: color5,
                    icon: 'assets/menu.svg',
                  ),
                  CategoryTab(
                    name: "Launch",
                    color: color6,
                    icon: 'assets/shuttle.svg',
                  ),
                  CategoryTab(
                    name: "Event",
                    color: color7,
                    icon: 'assets/event.svg',
                  ),
                  CategoryTab(
                    name: "Offers",
                    color: color8,
                    icon: 'assets/offer.svg',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Color(color1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "New Sneakers",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            onPressed: () {},
                            color: Color(color4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "View All Models",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: 260,
                    child: ListView.builder(
                      itemCount: dummySneakers.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var sneaker = dummySneakers[index];
                        return InkWell(
                          onTap: () {},
                          child: SneakersCard(
                            sneakers: sneaker,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
