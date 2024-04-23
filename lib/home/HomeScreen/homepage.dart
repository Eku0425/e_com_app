import 'package:e_com_app/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    child: Icon(Icons.menu),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/cart');
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Icon(Icons.shopping_bag_outlined),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 10, 5, 10),
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'What are you looking for...?',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/img/slider.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Brand',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      )),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                              image: AssetImage('assets/img/Adidas.png'))),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img/newbalance.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img/nike.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img/Addidas.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'New Arrial',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: [
                  ...List.generate(
                      productList.length,
                      (index) => GestureDetector(
                          onTap: () {
                            selectedIndex = index;
                            Navigator.of(context).pushNamed('/detail');
                          },
                          child: productBox(index))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row productBox(int index) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 280,
          width: 425,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Container(
                height: 150,
                width: 250,
                child: Image.asset(
                  productList[index]['img'],
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                productList[index]['brand'],
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                productList[index]['price'].toString(),
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

int selectedIndex = 0;
