import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   bool contactus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Demo()));
              },
              child: Container(
                color: Colors.blue,
                width: 150,
                height: 50,
                child: const Center(
                  child: Text(
                    "popup",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
           
                 onTap: () {
                        setState(() {
                          contactus = contactus;
                          final Uri emailLaunchUri = Uri(
                            scheme: 'mailto',
                            path: 'kullu12340@gmail.com',
                            queryParameters: {
                              'subject': 'Customer Support - demo',
                              'body': '',
                            },
                          );
                          launchUrl(emailLaunchUri);
                        });
               
                //  Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const EmailSender()));
                //EmailSender
              },
              child: Container(
                color: Colors.green,
                width: 150,
                height: 50,
                child: const Center(
                  child: Text(
                    "Email",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
