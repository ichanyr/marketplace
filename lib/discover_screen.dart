import 'package:flutter/material.dart';
import 'package:marketplace/filter_screen.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "TAS ELIZABETH BACKPACK 0786-0002",
      "tipe": "wallets",
      "harga": "\$255",
      "discount": "",
      "iconFav": true,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/01/0786-0002-17_2-768x768.jpg"
    },
    {
      "title": "white sneaker with adidas logo",
      "tipe": "wallets",
      "harga": "\$255",
      "discount": "23",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/06/0750-1372-06_0.jpg"
    },
    {
      "title": "DEMANDA SHOULDER BAG",
      "tipe": "Sling Bag",
      "harga": "\$255",
      "discount": "",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2022/06/0055-5153-09-Tas-Wanita-Elizabeth.jpg"
    },
    {
      "title": "DOMPET EMSIO BY ELIZABETH",
      "tipe": "Wallets",
      "harga": "\$255",
      "discount": "25",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2022/12/0733-0652-06_1.jpg"
    },
    {
      "title": "TAS ELIZABETH TOTE BAG 0055-5583",
      "tipe": "Tote Bag",
      "harga": "\$255",
      "discount": "",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/06/0055-5583-33_1.jpg"
    },
    {
      "title": "TAS ELIZABETH BACKPACK 0706-1532",
      "tipe": "wallets",
      "harga": "\$255",
      "discount": "",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/07/0706-1532-27_1-768x768.jpg"
    },
    {
      "title": "TAS ELIZABETH TOTE BAG 0022-1115",
      "tipe": "wallets",
      "harga": "\$255",
      "discount": "30",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/02/0022-1115-03_3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0XFFFFFFFF),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.clear_rounded),
                  ),
                  hintText: 'Hoodie',
                  // fillColor: Colors.black,
                  // iconColor: Colors.black,
                  border: InputBorder.none),
            ),
          ),
          toolbarHeight: 80,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  thickness: 2,
                  color: Colors.grey[300],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.amber,
                      width: 20,
                      thickness: 5,
                      indent: 20,
                      endIndent: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FilterScreen();
                        }));
                      },
                      child: Text(
                        'Filter',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey[300],
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      mainAxisExtent: 300),
                  itemCount: gridMap.length,
                  itemBuilder: (_, index) {
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white),
                        child: Stack(children: [
                          Column(children: [
                            Image.network(
                              gridMap.elementAt(index)['images'],
                            ),
                            SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "${gridMap.elementAt(index)['tipe']}",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "${gridMap.elementAt(index)['title']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "${gridMap.elementAt(index)['harga']}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2!
                                                  .merge(
                                                    TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "${gridMap.elementAt(index)['discount']}",
                                            style: const TextStyle(
                                                color: Color(0XFF35A29F),
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                          Positioned(
                              top: 8,
                              right: 8,
                              child: Icon(Icons.favorite_border))
                        ]));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
