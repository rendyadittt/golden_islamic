import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_islamic/bloc/quran/bloc/quran_bloc.dart';
import 'package:golden_islamic/color.dart';
import 'package:golden_islamic/model/quran/ayat.dart';
import 'package:golden_islamic/model/quran/surat.dart';
import 'package:golden_islamic/page/db/db_quran.dart';
import 'package:golden_islamic/routes.dart';

class QuranPageParent extends StatefulWidget {
  const QuranPageParent({Key? key}) : super(key: key);

  @override
  _QuranPageParentState createState() => _QuranPageParentState();
}

class _QuranPageParentState extends State<QuranPageParent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranBloc(),
      child: QuranPage(),
    );
  }
}

class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  _QuranPageState createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  List<ModelSurat> listQuran = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getQuran();
    // _getData();
    _getSurat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.backgroundColor,
        body: BlocListener<QuranBloc, QuranState>(
          listener: (context, state) {
            if (state is QuranSuccess) {
                return Routes.navigateToDetailQuranPage(context, state.data!);
            }
          },
          child: BlocBuilder<QuranBloc, QuranState>(
            builder: (context, state) {
              if (state is QuranLoading) {
                return CircularProgressIndicator();
              } else if (state is QuranSuccess) {
                return ListView(
                  children: [
                    buildListQuran(),
                  ],
                );
              } else if (state is QuranFailed) {
                return ListView(
                  children: [
                    buildListQuran(),
                  ],
                );
              } else if (state is QuranInitial) {
                return ListView(
                  children: [
                    buildListQuran(),
                  ],
                );
              } else {
                return ListView(
                  children: [
                    buildListQuran(),
                  ],
                );
              }
            },
          ),
        ));
  }

  // void getQuran() async {
  //   final String response = await rootBundle.loadString('assets/list_quran.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     listQuran = data["1"];
  //   });
  // }

  Widget buildListQuran() {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listQuran.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.05)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () async {
                  print(listQuran[index].sId.toString() + "ajib");
                  context.read<QuranBloc>().add(QuranButtonPressed(
                      number: listQuran[index].sId.toString()));
                },
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 18, right: 18, top: 16, bottom: 16),
                  child: Row(children: [
                    Container(
                      child:
                          Stack(alignment: Alignment.center, children: <Widget>[
                        new Icon(Icons.brightness_low,
                            color: Colors.green[400], size: 52),
                        Text(
                          listQuran[index].sId.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'PoppinsBold',
                              fontSize: 12,
                              color: Colors.black),
                        )
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listQuran[index].sName.toString(),
                            style: TextStyle(
                                fontFamily: 'PoppinsBold',
                                fontSize: 13,
                                color: Colors.black),
                          ),
                          Text(
                            listQuran[index].sArti.toString(),
                            style: TextStyle(
                                fontFamily: 'PoppinsMedium',
                                fontSize: 10,
                                color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      listQuran[index].sArab.toString(),
                      style: TextStyle(
                          fontFamily: 'Lpmq',
                          fontSize: MediaQuery.of(context).size.width / 21,
                          color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ),
          );
        });
  }

  void _getData() async {
    List<ModelAyat> data = [];
    try {
      await DbQuran.ayat(surat: "1").then((value) => data = value);
      for (var i = 0; i < data.length; i++) {
        print(data[i].qIndo.toString() + "ujang");
      }
    } catch (e) {
      data = [];
    }
  }

  void _getSurat() async {
    try {
      await DbQuran.surat().then((value) {
        setState(() {
          listQuran = value;
        });
      });
    } catch (e) {
      listQuran = [];
    }
  }
}
