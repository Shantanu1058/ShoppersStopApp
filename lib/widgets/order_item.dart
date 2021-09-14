import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                'assets/images/bag_1.png',
                fit: BoxFit.fitWidth,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Name of the product',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Price of the Product',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Dispatched by',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            if (counter > 1)
                              setState(() {
                                counter--;
                              });
                          },
                          icon: Image.asset(
                            'assets/icons/minus_button.png',
                          )),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Text('$counter')),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                          icon: SvgPicture.asset('assets/icons/plus_icon.svg')),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Text(
                            'Total Cost:'
                            '\Rs.${1 * counter}',
                            style: TextStyle(fontFamily: 'Roboto-Bold'),
                          )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
