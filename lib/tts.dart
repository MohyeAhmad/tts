import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TTs extends StatefulWidget {
  const TTs({Key? key}) : super(key: key);

  @override
  State<TTs> createState() => _TTsState();
}

class _TTsState extends State<TTs> {
  FlutterTts flutterTts = FlutterTts();
  late TextEditingController texts;

  TextFormField tt = TextFormField();

  Widget build(BuildContext context) {
    speak(String ss) async {
      flutterTts.setLanguage('AR-ar');
      flutterTts.setPitch(1);

      await flutterTts.speak(ss);
      await flutterTts.stop();
      flutterTts.cancelHandler;
    }

    return Material(
      child: Scaffold(
        body: Column(children: [
          Form(
            child: Column(
              children: [
                Text('hello'),
                IconButton(
                    onPressed: () async {
                      flutterTts.cancelHandler;

                      await speak('هذه هي تفاصيل ا');
                    },
                    icon: const Icon(Icons.volume_down)),
                IconButton(
                    onPressed: () async {
                      flutterTts.cancelHandler;

                      await speak('كيفك عم بيقولو بقى عندك عيال ');

                      flutterTts.cancelHandler;

                      await speak('انا والله كنت مفكرتك برات البلاد');
                    },
                    icon: const Icon(Icons.volume_down))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
