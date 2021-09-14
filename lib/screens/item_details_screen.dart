import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppers_stop_app/models/product.dart';

import 'orders_screen.dart';

class ItemDetailsScreen extends StatefulWidget {
  final Product product;
  const ItemDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
              )),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.shopping_cart_sharp),
            SizedBox(
              width: 5,
            ),
            Text(
              "Order Now",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderScreen(),
                  )),
              icon: SvgPicture.asset('assets/icons/cart_icon.svg'))
        ],
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.005,
                  left: 4,
                  right: 4),
              decoration: BoxDecoration(
                  color: widget.product.color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Image.asset(widget.product.image)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 4),
            height: MediaQuery.of(context).size.height * 0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                border: Border.all(color: Colors.black, width: 2)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.product.title,
                style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    widget.product.description,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
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
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        'Total Cost:'
                        '\Rs.${widget.product.price * counter}',
                        style: TextStyle(fontFamily: 'Roboto-Bold'),
                      ))
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
