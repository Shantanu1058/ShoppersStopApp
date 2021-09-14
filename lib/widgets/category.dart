import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppers_stop_app/models/product.dart';

class Category extends StatelessWidget {
  final Product product;
  const Category({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8, left: 4, right: 4),
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.height * 0.2,
          child: Image.asset(
            product.image,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Text(
                product.title,
                style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: RatingBarIndicator(
                rating: 4,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20.0,
                unratedColor: Colors.amber.withAlpha(50),
                direction: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Text(
                '\Rs.${product.price}',
                style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 19,
                    color: Colors.red.shade700),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
