import 'package:flutter/material.dart';
import 'package:marketplace/discover_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues values = RangeValues(1, 300); // rangeslider
  int selectedGenderIndex = -1;
  int selectedSizeIndex = -1;
  int selectedColorIndex = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0XFFFFFFFF),
          title: Text(
            'Filter',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return DiscoverScreen();
                }));
              },
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              )),
          toolbarHeight: 80,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
          child: Column(children: [
            Divider(
              thickness: 10,
              color: Colors.grey[200],
            ),
            SizedBox(
              height: 20,
            ),

            //Gender
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedGenderIndex = 0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: selectedGenderIndex == 0
                          ? Color(0XFF35A29F)
                          : Colors.grey,
                    ),
                    color: selectedGenderIndex == 0
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Center(child: Text('Men')),
                  height: 50,
                  width: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedGenderIndex = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: selectedGenderIndex == 1
                          ? Color(0XFF35A29F)
                          : Colors.grey,
                    ),
                    color: selectedGenderIndex == 1
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Center(child: Text('Women')),
                  height: 50,
                  width: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedGenderIndex = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: selectedGenderIndex == 2
                          ? Color(0XFF35A29F)
                          : Colors.grey,
                    ),
                    color: selectedGenderIndex == 2
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Center(child: Text('Unisex')),
                  height: 50,
                  width: 100,
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),

            //Size
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Size',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 1
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 1
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('XXS')),
                    height: 50,
                    width: 70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 2
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 2
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('XS')),
                    height: 50,
                    width: 70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 3
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 3
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('S')),
                    height: 50,
                    width: 70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 4;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 4
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 4
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('M')),
                    height: 50,
                    width: 70,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 5;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 5
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 5
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('L')),
                    height: 50,
                    width: 70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 6;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 6
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 6
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('XL')),
                    height: 50,
                    width: 70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 7;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 7
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 7
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('XXL')),
                    height: 50,
                    width: 70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedSizeIndex = 8;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: selectedSizeIndex == 8
                            ? Color(0XFF35A29F)
                            : Colors.grey,
                      ),
                      color: selectedSizeIndex == 8
                          ? Color(0XFF35A29F)
                          : Colors.white,
                    ),
                    child: Center(child: Text('XXXL')),
                    height: 50,
                    width: 70,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Price',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${values.start.toStringAsFixed(0)}"),
                  Text("\$${values.end.toStringAsFixed(0)}"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RangeSlider(
                activeColor: Color(0XFF35A29F),
                inactiveColor: Colors.grey,
                min: 0,
                max: 300,
                values: values,
                onChanged: (newValues) {
                  setState(() {
                    values = newValues;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Color',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = 0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: selectedSizeIndex == 0
                          ? Color(0XFF35A29F)
                          : Colors.grey,
                    ),
                    color: selectedColorIndex == 0
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(Icons.favorite, color: Colors.black),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Black')
                    ],
                  ),
                  height: 50,
                  width: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                        color: selectedColorIndex == 1
                            ? Color(0XFF35A29F)
                            : Colors.grey),
                    color: selectedColorIndex == 1
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Blue'),
                    ],
                  ),
                  height: 50,
                  width: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                        color: selectedColorIndex == 2
                            ? Color(0XFF35A29F)
                            : Colors.grey),
                    color: selectedColorIndex == 2
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Red'),
                    ],
                  ),
                  height: 50,
                  width: 100,
                ),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = 3;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                        color: selectedColorIndex == 3
                            ? Color(0XFF35A29F)
                            : Colors.grey),
                    color: selectedColorIndex == 3
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Grey'),
                    ],
                  ),
                  height: 50,
                  width: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = 4;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                        color: selectedColorIndex == 4
                            ? Color(0XFF35A29F)
                            : Colors.grey),
                    color: selectedColorIndex == 4
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.yellow,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Yellow'),
                    ],
                  ),
                  height: 50,
                  width: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = 5;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: selectedSizeIndex == 5
                          ? Color(0XFF35A29F)
                          : Colors.grey,
                    ),
                    color: selectedColorIndex == 5
                        ? Color(0XFF35A29F)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(Icons.favorite, color: Colors.pink),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text('Pink')
                    ],
                  ),
                  height: 50,
                  width: 100,
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0XFF35A29F),
              ),
              height: 50,
              width: 350,
              child: Center(
                  child: Text(
                'Show 80 Results',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              )),
            )
          ]),
        ),
      ),
    );
  }
}
