import 'package:flutter/material.dart';
import '../main.dart';

class Product extends StatelessWidget {
  Product({required this.imageProduct,required this.nameProduct,required this.priceProduct , required this.ontap});
String ?imageProduct;
String ?nameProduct;
String? priceProduct;
Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child:Column(
                children: [
                  Container(
                  
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(47, 152, 221, 1).withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 7,
                          
                          )
                        ],
                        border: Border.all(
                            color: Color.fromARGB(255, 212, 220, 235))),
                    width: 150,
                    height: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: NetworkImage(
                                  '$imageProduct'),
                              width: 100,
                              height: 100,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '$nameProduct',
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(
                              width: 22,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$priceProduct'),
                            Icon(Icons.favorite),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ) ,
    );

  }
}