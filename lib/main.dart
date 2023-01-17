import 'package:flutter/material.dart';

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
        primarySwatch: Colors.purple,
      ),
      home: const MyGridPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class  MyGridPage extends StatefulWidget {
  const MyGridPage ({Key? key}) : super(key: key);

  @override
  State<MyGridPage> createState() => _MyGridPageState();
}

class _MyGridPageState extends State< MyGridPage> {

  List<String> quote = [
    "WIN",
    "BE YOU",
    "WORK AND PRAY",
    "BE GOOD",
    "NEVER QUIT",
    "BE KIND",
    "KEEP FIGHTING",
    "MINIMIZE YOUR EXPECTATIONS",
    "DO GOOD",
    "PRACTICE MAKES PERFECT",
    "BE STOIC",
    "DREAM AND EXECUTE",
    "LIFE IS GOOD",
    "STRIVE FOR EXCELLENCE",
    "HELP OTHERS",
    "THINK GOOOD THOUGHTS",
    "GIVE FIRM HANDSHAKES",
    "FAIL AND GO AGAIN",
    "BE YOUR OWN MOTIVATION",
    "REST WHEN YOU CAN",
    "BE HONEST",





  ];

  @override


  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title:  Text("GRIDVIEW")),
          body: SafeArea(
            child:  Column(
                children: [
                  SizedBox(height: 5),
                  Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.all(33),
                          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount (
                            crossAxisCount: 3,
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,

                          ) ,
                          itemCount: 21,
                          itemBuilder: (context, index){
                          return Container(
                            
                            padding: EdgeInsets.all(9),
                            color: Color(0xFFAB47BC),
                            child: Center(
                              child: Text("${quote[index]}"),
                            ),
                          );
                          }
                      ),
                  )


                ],

            )

          ),

        );

  }
}