import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:golden_islamic/color.dart';
import 'package:golden_islamic/routes.dart';

class HomeScreenPageParent extends StatefulWidget {
  const HomeScreenPageParent({Key? key}) : super(key: key);

  @override
  _HomeScreenPageParentState createState() => _HomeScreenPageParentState();
}

class _HomeScreenPageParentState extends State<HomeScreenPageParent> {
  @override
  Widget build(BuildContext context) {
    return HomeScreenPage();
  }
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              buildContainerWaktuSolat(),
              // buildContainerFitur(),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    // buildQuran(),
                    // buildQuran(),
                    // buildQuran(),
                    // buildQuran()
                  ],
                ),
              ),
              buildKajian(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildContainerWaktuSolat() {
    return Container(
      width: double.infinity,
      color: MyColor.greenContainer,
      child: Padding(
        padding: EdgeInsets.only(top: 42),
        child: Column(
          children: [
            Text(
              "Dzuhur",
              style: TextStyle(
                  fontFamily: 'PoppinsBold', fontSize: 18, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "12:00",
                  style: TextStyle(
                      fontFamily: 'PoppinsExtraBold',
                      fontSize: 32,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "AM",
                    style: TextStyle(
                        fontFamily: 'PoppinsExtraBold',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.white),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Jakarta, Indonesia",
                      style: TextStyle(
                          fontFamily: 'PoppinsMedium',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, right: 32, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Subuh",
                        style: TextStyle(
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      Text(
                        "04:30 AM",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Dzuhur",
                        style: TextStyle(
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      Text(
                        "04:30 AM",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Ashar",
                        style: TextStyle(
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      Text(
                        "04:30 AM",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Maghrib",
                        style: TextStyle(
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      Text(
                        "04:30 AM",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Isya",
                        style: TextStyle(
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      Text(
                        "04:30 AM",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildContainerFitur(),
          ],
        ),
      ),
    );
  }

  Widget buildContainerFitur() {
    return Padding(
      padding: EdgeInsets.only(top: 52),
      child: Container(
        width: double.infinity,
        // height: 300,
        // color: Colors.blue,
        decoration: new BoxDecoration(
          color: MyColor.backgroundColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(36), topLeft: Radius.circular(36)),
        ),
        child: Column(
          children: [
            buildRow1(),
            buildCarousel1(),
            buildRow2(),
            buildCarousel2(),
          ],
        ),
      ),
    );
  }

  Widget buildRow1() {
    return Padding(
      padding: EdgeInsets.only(top: 23, left: 23, right: 23),
      child: Container(
          decoration: new BoxDecoration(
            color: MyColor.backgroundColor,
            borderRadius: new BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: MyColor.greenLow,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: MyColor.greenDof,
                          size: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Tentang aplikasi",
                        style: TextStyle(
                            fontFamily: 'PoppinsMedium',
                            fontSize: 11,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: MyColor.greenLow,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: MyColor.greenDof,
                          size: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Kontribusi",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: MyColor.greenLow,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: MyColor.greenDof,
                          size: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Hadist",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: MyColor.greenLow,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: MyColor.greenDof,
                          size: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Edukasi",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 11,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget buildRow2() {
    return Padding(
      padding: EdgeInsets.only(top: 23, left: 23, right: 23),
      child: Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(18),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: new BoxDecoration(
                              color: MyColor.greenLow,
                              borderRadius: new BorderRadius.circular(8)),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Routes.navigateToQuranPage(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Icon(
                                  Icons.menu_book_outlined,
                                  color: MyColor.greenDof,
                                  size: 26,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            "Al-Quran",
                            style: TextStyle(
                                fontFamily: 'PoppinsMedium',
                                fontSize: 11,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          decoration: new BoxDecoration(
                              color: MyColor.greenLow,
                              borderRadius: new BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(
                              Icons.menu_book_outlined,
                              color: MyColor.greenDof,
                              size: 26,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            "Kontribusi",
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 11,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          decoration: new BoxDecoration(
                              color: MyColor.greenLow,
                              borderRadius: new BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(
                              Icons.menu_book_outlined,
                              color: MyColor.greenDof,
                              size: 26,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            "Hadist",
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 11,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          decoration: new BoxDecoration(
                              color: MyColor.greenLow,
                              borderRadius: new BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(
                              Icons.menu_book_outlined,
                              color: MyColor.greenDof,
                              size: 26,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            "Edukasi",
                            style: TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 11,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: new BoxDecoration(
                                color: MyColor.greenLow,
                                borderRadius: new BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Icon(
                                Icons.menu_book_outlined,
                                color: MyColor.greenDof,
                                size: 26,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Tentang aplikasi",
                              style: TextStyle(
                                  fontFamily: 'PoppinsMedium',
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            decoration: new BoxDecoration(
                                color: MyColor.greenLow,
                                borderRadius: new BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Icon(
                                Icons.menu_book_outlined,
                                color: MyColor.greenDof,
                                size: 26,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Kontribusi",
                              style: TextStyle(
                                  fontFamily: 'PoppinsRegular',
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            decoration: new BoxDecoration(
                                color: MyColor.greenLow,
                                borderRadius: new BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Icon(
                                Icons.menu_book_outlined,
                                color: MyColor.greenDof,
                                size: 26,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Hadist",
                              style: TextStyle(
                                  fontFamily: 'PoppinsRegular',
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            decoration: new BoxDecoration(
                                color: MyColor.greenLow,
                                borderRadius: new BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Icon(
                                Icons.menu_book_outlined,
                                color: MyColor.greenDof,
                                size: 26,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Edukasi",
                              style: TextStyle(
                                  fontFamily: 'PoppinsRegular',
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget listTest() {
    return Container(
      color: Colors.green,
    );
  }

  Widget buildCarousel1() {
    List<Widget> a = [listTest()];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28, top: 23, right: 28),
          child: Row(
            children: [
              Text(
                "Kajian teratas",
                style: TextStyle(
                    fontFamily: 'PoppinsExtraBold',
                    fontSize: 13,
                    color: Colors.black),
              ),
              Spacer(),
              Container(
                decoration: new BoxDecoration(
                    color: MyColor.greenLow,
                    borderRadius: new BorderRadius.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 6, bottom: 6, left: 15, right: 15),
                  child: Text(
                    "Lihat semua",
                    style: TextStyle(
                        fontFamily: 'PoppinsExtraBold',
                        fontSize: 13,
                        color: MyColor.greenDof),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: CarouselSlider(
              items: a,
              options: CarouselOptions(
                height: 120,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )),
        ),
      ],
    );
  }

  Widget buildCarousel2() {
    List<Widget> a = [listTest()];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28, top: 23, right: 28),
          child: Row(
            children: [
              Text(
                "Kajian teratas",
                style: TextStyle(
                    fontFamily: 'PoppinsExtraBold',
                    fontSize: 13,
                    color: Colors.black),
              ),
              Spacer(),
              Container(
                decoration: new BoxDecoration(
                    color: MyColor.greenLow,
                    borderRadius: new BorderRadius.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 6, bottom: 6, left: 15, right: 15),
                  child: Text(
                    "Lihat semua",
                    style: TextStyle(
                        fontFamily: 'PoppinsExtraBold',
                        fontSize: 13,
                        color: MyColor.greenDof),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: CarouselSlider(
              items: a,
              options: CarouselOptions(
                height: 120,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )),
        ),
      ],
    );
  }

  Widget buildQuran() {
    return Column(
      children: [
        Container(
            decoration: new BoxDecoration(
                color: MyColor.blueColor,
                borderRadius: new BorderRadius.circular(
                    MediaQuery.of(context).size.width / 100)),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width / 100),
              child: InkWell(
                onTap: () {
                  Routes.navigateToQuranPage(context);
                },
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 26),
                  child: Icon(Icons.fastfood_rounded,
                      size: MediaQuery.of(context).size.width / 16,
                      color: Colors.white),
                ),
              ),
            )),
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 42),
          child: Text(
            "Dzuhur",
            style: TextStyle(
                fontFamily: 'PoppinsLight',
                fontSize: MediaQuery.of(context).size.width / 33,
                color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget buildKajian() {
    return Padding(
      padding: EdgeInsets.only(top: 26, left: 23, right: 23),
      child: Column(children: [
        Row(
          children: [
            Text(
              "Kajian teratas",
              style: TextStyle(
                  fontFamily: 'PoppinsExtraBold',
                  fontSize: 13,
                  color: Colors.black),
            ),
            Spacer(),
            Container(
              decoration: new BoxDecoration(
                  color: MyColor.greenLow,
                  borderRadius: new BorderRadius.circular(32)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 6, bottom: 6, left: 15, right: 15),
                child: Text(
                  "Lihat semua",
                  style: TextStyle(
                      fontFamily: 'PoppinsExtraBold',
                      fontSize: 13,
                      color: MyColor.greenDof),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 23),
          child: ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 100,
              maxHeight: 160,
            ),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      width: 120,
                      height: 150,
                      color: Colors.green,
                    ),
                  );
                }),
          ),
        )
      ]),
    );
  }
}
