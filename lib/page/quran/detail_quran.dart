import 'package:flutter/material.dart';
import 'package:golden_islamic/color.dart';
import 'package:golden_islamic/model/quran/ayat.dart';

class DetailQuranPage extends StatefulWidget {
  List<ModelAyat>? quran = [];
  DetailQuranPage({@required this.quran});

  @override
  _DetailQuranPageState createState() => _DetailQuranPageState();
}

class _DetailQuranPageState extends State<DetailQuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: ListView(
        children: [
          buildListQuran(widget.quran),
        ],
      ),
    );
  }

  Widget buildListQuran(List<ModelAyat>? listQuran) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: listQuran!.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.05)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () async {
                  // print(listQuran[index]["id"].toString());
                  // context.read<QuranBloc>().add(QuranButtonPressed(number: listQuran[index]["id"].toString()));
                },
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 23, right: 23, top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          listQuran[index].qAyat.toString(),
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: 'Lpmq',
                              fontSize: 26,
                              color: Colors.black),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              listQuran[index].qRead.toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'PoppinsMedium',
                                  fontSize: 13,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              listQuran[index].qIndo.toString(),
                              style: TextStyle(
                                  fontFamily: 'PoppinsMedium',
                                  fontSize: 12,
                                  color: Colors.grey[700]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
