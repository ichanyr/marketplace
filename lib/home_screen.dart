import 'package:flutter/material.dart';
import 'package:marketplace/discover_screen.dart';
import 'package:marketplace/main.dart';
import 'bottomnavbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavorite = false;
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "TAS ELIZABETH BACKPACK 0786-0002",
      "tipe": "Bagpack",
      "harga": "\$255",
      "discount": "",
      "iconFav": true,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/01/0786-0002-17_2-768x768.jpg"
    },
    {
      "title": "Wallets",
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
      "tipe": "Backpack",
      "harga": "\$255",
      "discount": "",
      "iconFav": false,
      "images":
          "https://elizabeth.co.id/wp-content/uploads/2023/07/0706-1532-27_1-768x768.jpg"
    },
    {
      "title": "TAS ELIZABETH TOTE BAG 0022-1115",
      "tipe": "Totebag",
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
          toolbarHeight: 80, //untuk mengatur tinggi appbar
          elevation: 0, //untuk menghilangkan garis
          backgroundColor: Color(0XFFFFFFFF),
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          //leading untuk icon di depan
          leading: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          //action untuk icon di belakang
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      height: 60,
                      width: 370,
                      child: Row(children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        Icon(
                          Icons.search_rounded,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Search Product',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ])),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    color: Colors.white,
                    height: 110,
                    width: 380,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 34,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 29,
                                backgroundImage:
                                    AssetImage('assets/images/wallets.jpg'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Wallets'),
                          ],
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Column(children: [
                          CircleAvatar(
                            radius: 34,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundImage:
                                  AssetImage('assets/images/tas3.jpg'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Hand Bags'),
                        ]),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 34,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 29,
                                backgroundImage:
                                    AssetImage('assets/images/backpacks.jpg'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Backpacks'),
                          ],
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Column(children: [
                          CircleAvatar(
                            radius: 34,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundImage:
                                  AssetImage('assets/images/tas1.jpg'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Sling Bags'),
                        ]),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Column(children: [
                          CircleAvatar(
                            radius: 34,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 29,
                              backgroundImage:
                                  AssetImage('assets/images/totebag.jpg'),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Tote Bags'),
                        ]),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommed for You',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 21),
                      ),
                      Text(
                        'See More',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Color(0XFF35A29F)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12.0,
                            mainAxisExtent: 280),
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
                                  ],
                                ),
                              )
                            ]),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: SvgPicture.asset(
                                "assets/icons/heart.svg",
                                color: Colors.red,
                                width: 25,
                                height: 25,
                              ),
                            )
                          ]));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
