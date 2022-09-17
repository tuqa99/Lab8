import 'package:flutter/material.dart';

import './componants/MyProdouct.dart';

import 'Screens/test.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome ... Store',
                        style: TextStyle(fontSize: 29),
                      ),
                      Text(
                        'Hi...',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/vectors/blackhaired-asian-man-in-shirt-abstract-male-avatar-vector-icon-vector-id1160715757?k=20&m=1160715757&s=612x612&w=0&h=5VizqimkN8NYpAW3n2EFIW4PJH-6icL_2VLRup8GmxU='),
                    height: 77,
                    width: 60,
                  ),
                ],
              ), SizedBox(
                    width: 22,
                    height: 44,
                  ), Divider(thickness: 6,),
              Row(
                children: [
                 
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/warehouse-of-large-factory-digital-tablet-picture-id670852562?k=20&m=670852562&s=612x612&w=0&h=o6JQSSFl0bAK5NZOQcfXiC6rh8viTXlE6ul8o8jMIPM=',
                    nameProduct: "Fridges",
                    priceProduct: "200\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Test();
                          },
                        ));
                      });
                    },
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/warehouse-of-large-factory-digital-tablet-picture-id670852562?k=20&m=670852562&s=612x612&w=0&h=o6JQSSFl0bAK5NZOQcfXiC6rh8viTXlE6ul8o8jMIPM=',
                    nameProduct: "Screens",
                    priceProduct: "250\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Test();
                          },
                        ));
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 44,),
              Row(
                children: [
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/high-angle-view-close-up-asian-woman-using-meal-delivery-service-picture-id1324465031?k=20&m=1324465031&s=612x612&w=0&h=kFkty2GbY_kEuTDpOZlhgb7oQLLYeHUGywsQG3VPYks=',
                    nameProduct: "Washing -M",
                    priceProduct: "150\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Test();
                          },
                        ));
                      });
                    },
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/high-angle-view-close-up-asian-woman-using-meal-delivery-service-picture-id1324465031?k=20&m=1324465031&s=612x612&w=0&h=kFkty2GbY_kEuTDpOZlhgb7oQLLYeHUGywsQG3VPYks=',
                    nameProduct: "Phones",
                    priceProduct: "450\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Test();
                          },
                        ));
                      });
                    },
                  ),
                ],
              ), SizedBox(height: 44,),
              Row(
                children: [
                  Product(
                    imageProduct: 'https://media.istockphoto.com/photos/office-desktop-with-womans-hands-working-on-laptop-business-with-picture-id1389860986?k=20&m=1389860986&s=612x612&w=0&h=LpwVns5ozTwvAIbmV-_Bt5TDJ7CmAWdhSZAx8_QKEos=',
                    nameProduct: "Laptops",
                    priceProduct: "750\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Test();
                          },
                        ));
                      });
                    },
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/vectors/modern-laptop-isolated-on-transparent-background-levitation-effect-vector-id1314197242?k=20&m=1314197242&s=612x612&w=0&h=oQk_q_v4VYpkwZTeHBhHdvsbDqRu3Z3gtIlEHYvxyjU=',
                    nameProduct: "Microwaves",
                    priceProduct: "50\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Test();
                          },
                        ));
                      });
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
