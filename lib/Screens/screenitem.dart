import 'package:labeight/main.dart';


import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => ScreenItem();
}

class ScreenItem extends State<ScreenOne> {
  String screenBlack = 'https://leaders.jo/wp-content/uploads/2022/07/%D8%B3%D8%A7%D9%851.jpg';
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
                    color: Color.fromARGB(255, 102, 163, 243),
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
                              'Sumsung Side by Side  SAMSUNG 50″ \n UHD 4K LED Smart TV',
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
                            image: NetworkImage("$screenBlack"),
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
                                    screenBlack =
                                        'https://leaders.jo/wp-content/uploads/2022/07/%D8%B3%D8%A7%D9%852.jpg';
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
                                    screenBlack =
                                        'https://leaders.jo/wp-content/uploads/2022/07/%D8%B3%D8%A7%D9%851.jpg';
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
                    'SAMSUNG 50″ UHD 4K LED Smart TV'),
                Image(
                  image: NetworkImage(
                      'https://images.samsung.com/is/image/samsung/p6pim/levant/feature/121226074/levant-feature-fine-tuned-color-for-a-vibrant--lifelike-picture-409719164?%24FB_TYPE_K_JPG%24'),
                  width: double.infinity,
                  height: 400,
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MyApp();
                    },));
                  });
                }, child: Text('Home'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
