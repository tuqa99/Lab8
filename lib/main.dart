import 'package:flutter/material.dart';
import 'package:labeight/Screens/Fridges.dart';

import './componants/MyProdouct.dart';

import 'Screens/Screens.dart';
import './Screens/Fridges.dart';

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
        backgroundColor: Color.fromARGB(255, 47, 59, 129),
        title: Text('SAMSUNG'),
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
                        'Welcome  to Samsung Store',
                        style: TextStyle(fontSize: 19),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hi...  Ahmmad',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
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
              ),
              SizedBox(
                width: 22,
                height: 10,
              ),
              Divider(
                thickness: 6,
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(
                    imageProduct:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_dqRbcTLc4s8YfVfjA6IPXw5eFvXP8zdnkg&usqp=CAU',
                    nameProduct: "Fridges",
                    priceProduct: "",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Fridgescreen();
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
                        'https://media.istockphoto.com/photos/smart-tv-with-samsung-apps-and-web-browser-picture-id458308457?k=20&m=458308457&s=612x612&w=0&h=n4VujYtG6vADLP2xy0wwr7sKdjKlxFBiwtBzyuFD0gU=',
                    nameProduct: "Screens",
                    priceProduct: "",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screens();
                          },
                        ));
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/washing-machine-isolated-on-white-background-picture-id1328117297?k=20&m=1328117297&s=612x612&w=0&h=PUw-SKnCYxG1huGbyhAxV-DLIu4SUcSL2aIuvMhYH5s=',
                    nameProduct: "Washing -M",
                    priceProduct: "",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screens();
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
                        'https://media.istockphoto.com/photos/huawei-p30-lite-picture-id1169842299?k=20&m=1169842299&s=612x612&w=0&h=npTJR6Xp9ehNrE7U0r0nIl1hxLzoE5TR3_Q3UqnxuwA=',
                    nameProduct: "Phones",
                    priceProduct: "",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screens();
                          },
                        ));
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/modern-new-office-black-laptop-on-white-background-front-view-picture-id1362775618?k=20&m=1362775618&s=612x612&w=0&h=5VEU2D2sIo0X62TqW3tecGcIPe7KR9SDHSBdEYkMafo=',
                    nameProduct: "Laptops",
                    priceProduct: "",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screens();
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
                        'https://media.istockphoto.com/photos/microwave-oven-picture-id1351458571?k=20&m=1351458571&s=612x612&w=0&h=Pm98Hic-VmE_f-AEanil-FhyWXawKjaqGmnt9kQYAN0=',
                    nameProduct: "Microwaves",
                    priceProduct: "",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Screens();
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
