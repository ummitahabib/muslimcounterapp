import 'package:flutter/material.dart';

import 'dhikirTracker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const DhikirCounter(),
    );
  }
}

class DhikirCounter extends StatefulWidget {
  const DhikirCounter({Key? key}) : super(key: key);

  @override
  _DhikirCounterState createState() => _DhikirCounterState();
}

class _DhikirCounterState extends State<DhikirCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252D2A),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                'Dhikir Counter',
                style: TextStyle(
                    fontSize: 32, fontFamily: 'Pacifico', color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '     Then remember Me,\nI will remember you ”(2:152)',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    width: 301,
                    height: 352,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD9D9D9),
                    ),
                    child: Image(
                      width: 10,
                      image: AssetImage('images/bg2.png'),
                    ),
                  ),

                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => DhikirTracker()));
                  //   },
                  //   child: Container(
                  //     height: 56,
                  //     width: 56,
                  //     color: Colors.white,
                  //     child: Text('Get Started'),
                  //   ),
                  // ),

                  SizedBox(
                    height: 10,
                  ),

                  Stack(
                    children: [
                      Container(
                        width: 135,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Container(
                          width: 120,
                          height: 50,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color(0xffD9D9D9), // Background Color
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DhikirTracker()));
                            },
                            child: Text(
                              'Get Started',
                              style: TextStyle(color: Color(0xff252D2A)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
