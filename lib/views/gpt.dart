import 'package:flutter/material.dart';

class GptScreen extends StatelessWidget {
  const GptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 30,),
            Text("StudyPT"),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(),
            ),
            ElevatedButton(onPressed: null, child: Text("Ask"))
          ],
        )),
      ),
    );
  }
}
