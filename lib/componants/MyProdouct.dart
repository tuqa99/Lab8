
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product extends StatelessWidget {


  Product({Key? key, required this.imageProduct,required this.nameProduct,required this.priceProduct , required this.ontap}) : super(key: key);
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
                            color: const Color.fromRGBO(47, 152, 221, 1).withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 7,
                          
                          )
                        ],
                        border: Border.all(
                            color: const Color.fromARGB(255, 212, 220, 235))),
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
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$nameProduct',
                              style: const TextStyle(fontSize: 22),
                            ),
                            const SizedBox(
                              width: 22,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$priceProduct'),
                            const Icon(Icons.favorite, color: Colors.redAccent,),
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
