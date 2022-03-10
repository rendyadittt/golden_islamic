import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:golden_islamic/model/quran/ayat.dart';
import 'package:golden_islamic/page/db/db_quran.dart';

part 'quran_event.dart';
part 'quran_state.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  QuranBloc() : super(QuranInitial());

  @override
  Stream<QuranState> mapEventToState(QuranEvent event) async* {
    if (event is QuranButtonPressed) {
      if (event.number == "1") {
        List<ModelAyat> data = [];
        try {
          await DbQuran.ayat(surat: "1").then((value) => data = value);
          yield QuranSuccess(data: data);
        } catch (e) {
          data = [];
        }
      } else if (event.number == "2") {
        List<ModelAyat> data = [];
        try {
          Future.delayed(Duration(seconds: 1), () {});
          await DbQuran.ayat(surat: "2").then((value) => data = value);
          yield QuranSuccess(data: data);
        } catch (e) {
          data = [];
        }
      } else if (event.number == "3") {
        List<ModelAyat> data = [];
        try {
          await DbQuran.ayat(surat: "3").then((value) => data = value);
          yield QuranSuccess(data: data);
        } catch (e) {
          data = [];
        }
      } else if (event.number == "4") {
      } else if (event.number == "5") {
      } else if (event.number == "6") {
      } else if (event.number == "7") {
      } else if (event.number == "8") {
      } else if (event.number == "9") {
      } else if (event.number == "10") {
      } else if (event.number == "11") {
      } else if (event.number == "12") {
      } else if (event.number == "13") {
      } else if (event.number == "14") {
      } else if (event.number == "15") {
      } else if (event.number == "16") {
      } else if (event.number == "17") {
      } else if (event.number == "18") {
      } else if (event.number == "19") {
      } else if (event.number == "20") {
      } else if (event.number == "21") {
      } else if (event.number == "22") {
      } else if (event.number == "23") {
      } else if (event.number == "24") {
      } else if (event.number == "25") {
      } else if (event.number == "26") {
      } else if (event.number == "27") {
      } else if (event.number == "28") {
      } else if (event.number == "29") {
      } else if (event.number == "30") {
      } else if (event.number == "31") {
      } else if (event.number == "32") {
      } else if (event.number == "33") {
      } else if (event.number == "34") {
      } else if (event.number == "35") {
      } else if (event.number == "36") {
      } else if (event.number == "37") {
      } else if (event.number == "38") {
      } else if (event.number == "39") {
      } else if (event.number == "40") {
      } else if (event.number == "41") {
      } else if (event.number == "42") {
      } else if (event.number == "43") {
      } else if (event.number == "44") {
      } else if (event.number == "45") {
      } else if (event.number == "46") {
      } else if (event.number == "47") {
      } else if (event.number == "48") {
      } else if (event.number == "49") {
      } else if (event.number == "50") {
      } else if (event.number == "51") {
      } else if (event.number == "52") {
      } else if (event.number == "53") {
      } else if (event.number == "54") {
      } else if (event.number == "55") {
      } else if (event.number == "56") {
      } else if (event.number == "57") {
      } else if (event.number == "58") {
      } else if (event.number == "59") {
      } else if (event.number == "60") {
      } else if (event.number == "61") {
      } else if (event.number == "62") {
      } else if (event.number == "63") {
      } else if (event.number == "64") {
      } else if (event.number == "65") {
      } else if (event.number == "66") {
      } else if (event.number == "67") {
      } else if (event.number == "68") {
      } else if (event.number == "69") {
      } else if (event.number == "70") {
      } else if (event.number == "71") {
      } else if (event.number == "72") {
      } else if (event.number == "73") {
      } else if (event.number == "74") {
      } else if (event.number == "75") {
      } else if (event.number == "76") {
      } else if (event.number == "77") {
      } else if (event.number == "78") {
      } else if (event.number == "79") {
      } else if (event.number == "80") {
      } else if (event.number == "81") {
      } else if (event.number == "82") {
      } else if (event.number == "83") {
      } else if (event.number == "84") {
      } else if (event.number == "85") {
      } else if (event.number == "86") {
      } else if (event.number == "87") {
      } else if (event.number == "88") {
      } else if (event.number == "89") {
      } else if (event.number == "90") {
      } else if (event.number == "91") {
      } else if (event.number == "92") {
      } else if (event.number == "93") {
      } else if (event.number == "94") {
      } else if (event.number == "95") {
      } else if (event.number == "96") {
      } else if (event.number == "97") {
      } else if (event.number == "98") {
      } else if (event.number == "99") {
      } else if (event.number == "100") {
      } else if (event.number == "101") {
      } else if (event.number == "102") {
      } else if (event.number == "103") {
      } else if (event.number == "104") {
      } else if (event.number == "105") {
      } else if (event.number == "106") {
      } else if (event.number == "107") {
      } else if (event.number == "108") {
      } else if (event.number == "109") {
      } else if (event.number == "110") {
      } else if (event.number == "111") {
      } else if (event.number == "112") {
      } else if (event.number == "113") {
      } else if (event.number == "114") {}
    }
  }
}
