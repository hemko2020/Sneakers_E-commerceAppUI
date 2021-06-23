import 'package:flutter/material.dart';
import 'package:sneakersapp/models/sneakers.dart';
import 'package:sneakersapp/tools/custom_color.dart';

class SneakersCard extends StatelessWidget {
  final Sneakers sneakers;
  SneakersCard({required this.sneakers});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(right: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 8),
        child: Column(
          children: [
            Container(
              width: 140,
              height: 150,
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 12, right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(sneakers.urlimage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Icon(
                Icons.favorite_border_rounded,
                color: Color(color2),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: SizedBox(
                width: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      sneakers.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      sneakers.category,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "${sneakers.price}",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
