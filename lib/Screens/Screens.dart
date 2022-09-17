import 'package:flutter/material.dart';
import '../componants/MyProdouct.dart';

import './screenitem.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screens"),
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
                        'https://media.istockphoto.com/photos/skype-picture-id458319385?k=20&m=458319385&s=612x612&w=0&h=U8rON65fTDr7EGQtmgb1yaFYl-ggELo0REzWkzSag-U=',
                    nameProduct: "  Screen1",
                    priceProduct: "200\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenOne();
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
                        'https://media.istockphoto.com/vectors/wide-tv-monitor-mockup-vector-id1002728980?k=20&m=1002728980&s=612x612&w=0&h=czTl4EixdxuTJr7SbYL8NLDG41VXwQskPENqK7f7tEA=',
                    nameProduct: "Screen2",
                    priceProduct: "250\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenOne();
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
                        'https://media.istockphoto.com/vectors/screen-flat-lcd-led-vector-illustration-vector-id844129212?k=20&m=844129212&s=612x612&w=0&h=RJwl-5ZF_TEGv8NhzxFyuwkrgzuzWUAgjI9TsexE2Tw=',
                    nameProduct: "Screen3",
                    priceProduct: "150\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenOne();
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
                        'https://media.istockphoto.com/vectors/realistic-tv-screen-with-shadow-on-white-background-modern-blank-lcd-vector-id1150677093?k=20&m=1150677093&s=612x612&w=0&h=_mVHsxzbuxL1gQo_bv4l_sraVgYfUefEtECBTwg5T5M=',
                    nameProduct: "Screen4",
                    priceProduct: "450\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenOne();
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
                        'https://media.istockphoto.com/photos/mockup-background-with-lcd-tv-with-flat-white-screen-fixed-on-a-wall-picture-id1264864110?k=20&m=1264864110&s=612x612&w=0&h=pD1dWLpc9njdFJK__EckCtHbhddmUgWSAHirjG8Gz1w=',
                    nameProduct: "Screen5",
                    priceProduct: "750\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return  ScreenOne();
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
                        'https://media.istockphoto.com/photos/big-led-tv-isolated-on-white-background-picture-id613753096?k=20&m=613753096&s=612x612&w=0&h=_do2ttIz_l3RXUij6ZIY13cSEjHat02mtw72SGwtyjA=',
                    nameProduct: "screen6",
                    priceProduct: "50\$",
                    ontap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenOne();
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
