import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DhikirTracker extends StatefulWidget {
  const DhikirTracker({Key? key}) : super(key: key);

  @override
  _DhikirTrackerState createState() => _DhikirTrackerState();
}

class _DhikirTrackerState extends State<DhikirTracker> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff252D2A),
        elevation: 0,
      ),
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
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: 190,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        'Progress: $_counter',
                        style: TextStyle(
                            fontFamily: 'Digital-7 Mono',
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        _resetCounter();
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        width: 75,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.blueGrey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      _incrementCounter();
                    },
                    child: Image(
                      width: 141,
                      height: 168,
                      image: AssetImage('images/counter1.png'),
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     top: 330.0,
                  //     left: 80,
                  //   ),
                  //   child: TextButton(
                  //     onPressed: () => Navigator.of(context).push(
                  //         MaterialPageRoute(
                  //             builder: (context) =>
                  //                 const DhikirCounterTracker())),
                  //     child: const Text('Flat Button'),
                  //   ),
                  //   // child: Stack(
                  //   //   children: [
                  //   //     Container(
                  //   //       width: 135,
                  //   //       height: 55,
                  //   //       decoration: BoxDecoration(
                  //   //         color: Color(0xffD9D9D9),
                  //   //         borderRadius: BorderRadius.circular(10),
                  //   //       ),
                  //   //     ),
                  //   //     Padding(
                  //   //       padding: const EdgeInsets.only(
                  //   //         left: 8.0,
                  //   //       ),
                  //   //       child: Container(
                  //   //         width: 120,
                  //   //         height: 50,
                  //   //         child: TextButton(
                  //   //           style: TextButton.styleFrom(
                  //   //             backgroundColor:
                  //   //                 Color(0xff252D2A), // Background Color
                  //   //           ),
                  //   //           onPressed: () {
                  //   //             Navigator.of(context).push(MaterialPageRoute(
                  //   //                 builder: (context) =>
                  //   //                     DhikirCounterTracker()));
                  //   //           },
                  //   //           child: Text(
                  //   //             'Get Started',
                  //   //             style: TextStyle(color: Colors.white),
                  //   //           ),
                  //   //         ),
                  //   //       ),
                  //   //     ),
                  //   //   ],
                  //   // ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
