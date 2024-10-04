import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  @override
  void initState() {
    findTheSUmofodd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      appBar: AppBar(
        leading: Icon(
          Icons.more_horiz,
          color: Colors.white,
          size: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white,
                child: Icon(
                  IconlyLight.profile,
                )),
          )
        ],
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.only(left: 22, top: 17),
                child: Text(
                  "Welcome $count",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.white),
                ),
              ),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 241, 241, 241),
                            child: Icon(Icons.abc)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Restaurant 2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text('Lorem Imsum is Simply dummy')
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 241, 241, 241),
                            child: Icon(Icons.abc)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Restaurant 2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text('Lorem Imsum is Simply dummy')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.workspace_premium,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.store,
              ),
              label: '',
            )
          ]),
    );
  }

  void findTheSUmofodd() {
    List<int> numbers = [12, 54, 7, 8, 16, 9, 11];

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] % 2 == 0) {
        count = count + numbers[i];
      }
    }
  }
}
