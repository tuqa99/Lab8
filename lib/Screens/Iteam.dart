import 'package:labeight/main.dart';

import '../componants/MyProdouct.dart';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String balckfrindge = 'https://leaders.jo/wp-content/uploads/2022/07/mj7.jpg';
  Color favaritcolor = Colors.grey;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 370,
                  height: 440,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 136, 127, 127)),
                    color: Color.fromARGB(255, 228, 218, 184),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Divider(
                              thickness: 44,
                            ),
                            SizedBox(
                              width: 66,
                            ),
                            Text(
                              'Sumsung Side by Side  Refrigerator \n Multi Door  Stainless Steel',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 53, 66, 77)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Image(
                            image: NetworkImage("$balckfrindge"),
                            width: 200,
                            height: 300,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 33,
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Text(
                                'Availability:',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                ' In stock',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 14),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    balckfrindge =
                                        'https://cairosales.com/32478-thickbox_default/smeg-refrigerator-feet-118-liter-one-door-red-colour-fab-10-rr.jpg';
                                  });
                                },
                                icon: Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 136, 131, 131),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    balckfrindge =
                                        'https://leaders.jo/wp-content/uploads/2022/07/mj7.jpg';
                                  });
                                },
                                icon: Icon(
                                  Icons.circle,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '3000.200JD',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              Text(
                                '4000JD',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 233, 50, 50),
                                    decoration: TextDecoration.lineThrough),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favaritcolor = Colors.pinkAccent;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: favaritcolor,
                                  )),
                              Row(
                                children: <Widget>[
                                  _itemCount != 0
                                      ? new IconButton(
                                          icon: new Icon(Icons.remove),
                                          onPressed: () =>
                                              setState(() => _itemCount--),
                                        )
                                      : new Container(),
                                  new Text(_itemCount.toString()),
                                  new IconButton(
                                      icon: new Icon(Icons.add),
                                      onPressed: () =>
                                          setState(() => _itemCount++)),
                                ],
                              ),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Color.fromARGB(255, 237, 240, 237),
                                ),
                                label: Text("Add to Cart"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                      height: 44,
                    ),
                  ],
                ),
                Text(
                    'InstaView Door-in-Door Refrigerator Double click for easy access to your favorites'),
                Image(
                  image: NetworkImage(
                      'https://icdn.digitaltrends.com/image/digitaltrends/lg-instaview-feat-image-1-1509x771.jpg'),
                  width: double.infinity,
                  height: 400,
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MyApp();
                    },));
                  });
                }, child: Text('back'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
