import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({super.key});
  String balckfrindge = 'https://leaders.jo/wp-content/uploads/2022/07/mj7.jpg';
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String balckfrindge = 'https://leaders.jo/wp-content/uploads/2022/07/mj7.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Availability:'),
                        Text(
                          ' In stock',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          image: NetworkImage("$balckfrindge"),
                          width: 300,
                          height: 400,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  balckfrindge =
                                      'https://cairosales.com/32478-thickbox_default/smeg-refrigerator-feet-118-liter-one-door-red-colour-fab-10-rr.jpg';
                                });
                              },
                              icon: Icon(
                                Icons.circle,
                                color: Colors.red,
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
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                        'Sumsung Side by Side Refrigerator \n Multi Door 889L Stainless Steel'),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromARGB(255, 121, 111, 111),
                ),
                Image(
                  image: NetworkImage(
                      'https://icdn.digitaltrends.com/image/digitaltrends/lg-instaview-feat-image-1-1509x771.jpg'),
                  width: double.infinity,
                  height: 400,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
