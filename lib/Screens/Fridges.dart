import 'package:flutter/material.dart';
import '../componants/MyProdouct.dart';
import 'fredgeitem.dart';

class Fridgescreen extends StatefulWidget {
  const Fridgescreen({super.key});

  @override
  State<Fridgescreen> createState() => _FridgescreenState();
}

class _FridgescreenState extends State<Fridgescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fridges"),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 220, 220),
                borderRadius: BorderRadius.circular(40)),
            child: Text(
              "Enjoy our collection",
              style: TextStyle(fontSize: 30, color: Colors.lightBlue),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                    labelText: 'Search', suffixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/modern-refrigerator-with-childs-drawing-notes-and-magnets-in-kitchen-picture-id1335000291?k=20&m=1335000291&s=612x612&w=0&h=ikN_S04r-4V6xccWnqr0Tbvef1mPylF7LfFlShjz8Fw=',
                    nameProduct: "Fridge1",
                    priceProduct: "200\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FridgeOne();
                          },
                        ));
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/modern-american-fridge-freezer-picture-id180699590?k=20&m=180699590&s=612x612&w=0&h=kr8KcSZUJLfIGJ9UEBEWtbk1L2Qo7rFlwXhoEBrBrJM=',
                    nameProduct: "Fridge2",
                    priceProduct: "250\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FridgeOne();
                          },
                        ));
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/modern-fridge-in-front-of-white-wall-picture-id990894662?k=20&m=990894662&s=612x612&w=0&h=KVqzoMts89g61p1JZZlGA9Wyj48Qm2SJHSwf1OcHATU=',
                    nameProduct: "Fridge3",
                    priceProduct: "150\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FridgeOne();
                          },
                        ));
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/vectors/set-of-vertical-and-horizontal-fridges-showcases-with-glass-doors-for-vector-id1335774936?k=20&m=1335774936&s=612x612&w=0&h=QW0MXvDuskhj979lMZnaY2Fm0BKFGo5xRPtER9UdAQs=',
                    nameProduct: "Fridge4",
                    priceProduct: "450\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FridgeOne();
                          },
                        ));
                      });
                    },
                  ),
                ],
              ),
             SizedBox(height: 33,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/closeup-of-an-open-refrigerator-picture-id1094166778?k=20&m=1094166778&s=612x612&w=0&h=6X6irFCHW_gq4RhW2rT-_8VIVwL5nmDZ7xgc1aKXkmo=',
                    nameProduct: "Fridge5",
                    priceProduct: "750\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FridgeOne();
                          },
                        ));
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Product(
                    imageProduct:
                        'https://media.istockphoto.com/photos/refrigerator-picture-id136846333?k=20&m=136846333&s=612x612&w=0&h=vztHwp7s7yatbT_hl0HBvVErDVJH7d5F8a_anbsRRr8=',
                    nameProduct: "Fridge6",
                    priceProduct: "50\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FridgeOne();
                          },
                        ));
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
