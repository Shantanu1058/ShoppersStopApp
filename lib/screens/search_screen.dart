import 'package:flutter/material.dart';
import 'package:shoppers_stop_app/models/product.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> _products = [
    Product(
        id: 1,
        rating: 4.5,
        title: "Office Code",
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 2,
        rating: 4.5,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)),
    Product(
        id: 3,
        title: "Hang Top",
        rating: 4.5,
        price: 234,
        size: 10,
        description: dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        rating: 4.5,
        price: 234,
        size: 11,
        description: dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        rating: 4.5,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      rating: 4.5,
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
    ),
    Product(
        id: 1,
        title: "Office Code",
        rating: 4.5,
        price: 234,
        size: 12,
        description: dummyText,
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 1,
        title: "Office Code",
        rating: 4.5,
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 1,
        title: "Office Code",
        rating: 4.5,
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 1,
        rating: 4.5,
        title: "Office Code",
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 1,
        title: "Office Code",
        rating: 4.5,
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
    Product(
        id: 1,
        title: "Office Code",
        rating: 4.5,
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.When an unknown printer took a galley.",
        image: "assets/images/bag_1.png",
        color: Color(0xFF3D82AE)),
  ];

  List<Product> _foundedProducts = [];

  @override
  void initState() {
    super.initState();
    // setState(() {
    //   _foundedProducts = _products;
    // });
  }

  onSearch(String search) {
    setState(() {
      _foundedProducts = _products
          .where((product) => product.title.toLowerCase().contains(search))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 40,
          child: TextField(
            onChanged: (value) {
              _foundedProducts = _products;
              onSearch(value.toLowerCase());
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none),
                hintStyle: TextStyle(fontSize: 18, color: Colors.black),
                hintText: "Search"),
          ),
        ),
      ),
      body: Container(
        child: _foundedProducts.length > 0
            ? ListView.builder(
                itemCount: _foundedProducts.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(18),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Text(
                    "${_foundedProducts[index].title}",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              )
            : Center(
                child: Text("No Products found"),
              ),
      ),
    );
  }
}
