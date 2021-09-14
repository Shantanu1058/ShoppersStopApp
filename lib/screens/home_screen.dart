import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppers_stop_app/models/product.dart';
import 'package:shoppers_stop_app/screens/item_details_screen.dart';
import 'package:shoppers_stop_app/screens/main_drawer.dart';
import 'package:shoppers_stop_app/screens/orders_screen.dart';
import 'package:shoppers_stop_app/screens/search_screen.dart';
import 'package:shoppers_stop_app/widgets/category.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();
  List<String> titles = [
    'Example1',
    'Example1',
    'Example1',
    'Example1',
    'Example1',
    'Example1',
    'Example1'
  ];
  late ScrollController _controller;
  int selectedIndex = 0;
  int count = 0;
  bool scroll = false;
  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent * 0.2) {
      setState(() {
        scroll = true;
      });
    } else {
      setState(() {
        scroll = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.directions_railway_filled_rounded),
            onPressed: toggle,
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                color: Color(0xFF535353),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    )),
                icon: SvgPicture.asset('assets/icons/search_button.svg')),
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderScreen(),
                    )),
                color: Color(0xFF535353),
                icon: count == 0
                    ? SvgPicture.asset('assets/icons/cart_icon.svg')
                    : Stack(children: [
                        SvgPicture.asset('assets/icons/cart_icon.svg'),
                        Container(
                          margin: EdgeInsets.fromLTRB(13, 0, 0, 0),
                          padding: EdgeInsets.all(0.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: Text(
                            '$count',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ])),
          ],
          title: Text(
            'Shopppers Stop',
            style: TextStyle(color: Colors.black, fontFamily: 'Roboto-Bold'),
          ),
        ),
        body: AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              double slide = 225 * animationController.value;
              double scale = 1 - (animationController.value * 0.3);
              return Stack(children: [
                animationController.isDismissed
                    ? Container()
                    : Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: MainDrawer()),
                Transform(
                  alignment: Alignment.centerLeft,
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 5, left: 10),
                              padding: EdgeInsets.only(
                                  bottom: 2, left: 6, right: 6, top: 6),
                              decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? Colors.black38
                                      : Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                '${titles[index]}',
                                style: TextStyle(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                          itemCount: titles.length,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Container(
                        height: scroll == true
                            ? 0
                            : MediaQuery.of(context).size.height * 0.25,
                        child: CarouselSlider.builder(
                          itemCount: products.length,
                          itemBuilder: (context, index, realIndex) =>
                              GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ItemDetailsScreen(
                                      product: products[index]),
                                )),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: products[index].color,
                              ),
                              child: Image.asset(
                                products[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          options: CarouselOptions(
                            height: 180.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                          controller: _controller,
                          itemCount: products.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ItemDetailsScreen(
                                      product: products[index]),
                                )),
                            child: Category(
                              product: products[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]);
            }));
  }
}
