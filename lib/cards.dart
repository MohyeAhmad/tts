import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Test extends StatelessWidget {
  FlutterTts flutterTts = FlutterTts();
  static const data1 = {
    "days": "30يوما ",
    "تفاصيل الخدمة":
        'تعرفة المياه الجديدة المعتمدة من تاريخ 1/1/2012  في ما يلي جدول يوضح تعرفة المياه المعتمدة حيث أن السعر يختلف حسب نوع الاشتراك وأنواع الاشتراكات المعتمدة هي منزلي، صناعي، سياحي، تجاري، مؤسسات عامة، جملة دورة الفاتورة شهرين تعرفة المياه الجديدة  المعتمدة',
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leadingWidth: 10,
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //User INFO

                  Container(
                    // color: Colors.green,
                    // margin: EdgeInsets.only(
                    //   top: 180.0,
                    // ),
                    // decoration: const BoxDecoration(
                    //   color: Color(0xFFEEEEEE),
                    //   borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(75.0),
                    //     topRight: Radius.circular(75.0),
                    //   ),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                        top: 20.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                //greeting text
                                Row(
                                  children: const <Widget>[
                                    // Expanded(
                                    //   child: Center(
                                    //     child: Text(
                                    //       'TEST',
                                    //       style: TextStyle(
                                    //         color: Colors.black,
                                    //         fontSize: 30.0,
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),

                                // SizedBox(
                                //   height: 20.0,
                                // ),
                                //app work

                                Column(
                                  children: <Widget>[
                                    //for (int i = 0; i < 10; i++)
                                    SingleChildScrollView(
                                        child: Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 5, 5, 5),
                                              color: Colors.white30,
                                              child: card(
                                                  "تفاصيل الخدمة",
                                                  data1["تفاصيل الخدمة"] ??
                                                      '')),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              height: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 5, 5, 5),
                                              color: Colors.white30,
                                              child: card(
                                                  "الوقت اللازم لتنفيذ الخدمة",
                                                  data1["days"] ?? "لم يحدد")),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              height: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 5, 5, 5),
                                              color: Colors.white30,
                                              child: card(
                                                  "تفاصيل الخدمة",
                                                  data1["تفاصيل الخدمة"] ??
                                                      '')),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              height: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 5, 5, 5),
                                              color: Colors.white30,
                                              child: card(
                                                  "تفاصيل الخدمة",
                                                  data1["تفاصيل الخدمة"] ??
                                                      '')),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              height: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 5, 5, 5),
                                              color: Colors.white30,
                                              child: card(
                                                  "تفاصيل الخدمة",
                                                  data1["تفاصيل الخدمة"] ??
                                                      '')),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              height: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  5, 5, 5, 5),
                                              color: Colors.white30,
                                              child: card(
                                                  "تفاصيل الخدمة",
                                                  data1["تفاصيل الخدمة"] ??
                                                      '')),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ))
                                  ],
                                ),

                                //add button
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card card(String name, String discription) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                //speak(name);
                                //sleep(Duration(microseconds: 20));
                                speak(discription);
                              },
                              icon: const Icon(Icons.volume_up_outlined)),
                          Expanded(
                              child: Text(discription

                                  // overflow:
                                  //     TextOverflow.ellipsis,
                                  ))
                        ])),
              ),
              Text(name),
            ])));
  }

  speak(String ss) async {
    FlutterTts ff = FlutterTts();
    flutterTts.setLanguage('AR-ar');

    await flutterTts.speak(ss);
    ff.setSilence(3);
    ff.stop();
  }
}
