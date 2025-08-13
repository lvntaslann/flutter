import 'package:flutter/material.dart';
import 'package:voice_and_video_call/page/call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final TextEditingController callIdController = TextEditingController();

  @override
  void dispose() {
    callIdController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width*0.6,
                height: height*0.1,
                child: TextField(
                  controller: callIdController,
                  decoration: const InputDecoration(
                    labelText: "Enter Call ID",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Builder(
                builder: (BuildContext context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              CallPage(callId: callIdController.text),
                        ),
                      );
                    },
                    child: const Text("Join a call"),
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}