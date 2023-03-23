// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 91, 173, 95),
                onPrimary: Colors.white // Background color
                ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Options()));
            },
            child: const Center(
              child: Text('Get Started'),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.book_outlined), label: 'Recipes'),
          NavigationDestination(
              icon: Icon(Icons.star_outlined), label: 'Favorites'),
          NavigationDestination(
              icon: Icon(Icons.account_box_outlined), label: 'Account')
        ]),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: 220,
                height: 220,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo3.png'),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _Options();
}

class _Options extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 173, 95),
        leading: OutlinedButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("What are we working with?",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.settings, color: Colors.white))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.book_outlined), label: 'Recipes'),
        NavigationDestination(
            icon: Icon(Icons.star_outlined), label: 'Favorites'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account')
      ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/chkn.webp"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Chicken >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95)
                                                  .withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NoteMainPage()));
                                      }),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/beef.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Beef >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95)
                                                  .withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NoteMainPage2()));
                                      }),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/sf3.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Fish >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95)
                                                  .withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NoteMainPage3()));
                                      }),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/vg2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Veggie >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95)
                                                  .withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NoteMainPage4()));
                                      }),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              /*
              OutlinedButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.amber,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NoteMainPage()));
                  }),*/
            ],
          ),
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard(
      {super.key,
      required this.image,
      required this.name,
      required this.date,
      required this.time,
      required this.rating});

  final String image;
  final String name;
  final String date;
  final String time;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, TasksPage.routeName);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        width: 320,
        height: 350,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                        ),
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 270,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Image.asset(
                                    image,
                                    height: 450,
                                    width: 450,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Text(
                              time,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "$rating",
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 0.0, top: 68.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 40,
                                        child: ElevatedButton(
                                            child: Text("See More",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(
                                                primary: Color.fromARGB(
                                                        255, 91, 173, 95)
                                                    .withOpacity(0.8),
                                                onPrimary: Colors
                                                    .white // Background color
                                                ),
                                            onPressed: () {}),
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class NoteMainPage extends StatefulWidget {
  const NoteMainPage({super.key});

  @override
  State<NoteMainPage> createState() => _NoteMainPageState();
}

class _NoteMainPageState extends State<NoteMainPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
        leading: OutlinedButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Chicken Recipes",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.add, color: Colors.white))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.book_outlined), label: 'Recipes'),
        NavigationDestination(
            icon: Icon(Icons.star_outlined), label: 'Favorites'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account'),
      ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 480,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Image.asset(
                            "assets/profile.png",
                            width: 60,
                            height: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Good Day User123!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Text("What are we making today?",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/chknop1.webp",
                      name: "Chicken Salad",
                      date: "Published in: 21/3/2023",
                      time: "15 min",
                      rating: 4.6),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  MainCard(
                      image: "assets/chknop2.webp",
                      name: "Chicken Sandwich",
                      date: "Published in: 19/3/2023",
                      time: "15 min",
                      rating: 4.5),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/chknop3.jpg",
                      name: "Chicken Burger",
                      date: "Published in: 18/2/2023",
                      time: "20 min",
                      rating: 3.8),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/chknop4.jpg",
                      name: "Chicken Tacos",
                      date: "Published in: 3/1/2023",
                      time: "25 min",
                      rating: 4.9),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteMainPage2 extends StatefulWidget {
  const NoteMainPage2({super.key});

  @override
  State<NoteMainPage2> createState() => _NoteMainPageState2();
}

class _NoteMainPageState2 extends State<NoteMainPage2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
        leading: OutlinedButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Beef Recipes",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.add, color: Colors.white))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.book_outlined), label: 'Recipes'),
        NavigationDestination(
            icon: Icon(Icons.star_outlined), label: 'Favorites'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account'),
      ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 480,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Image.asset(
                            "assets/profile.png",
                            width: 60,
                            height: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Good Day User123!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Text("What are we making today?",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/beefop1.jpeg",
                      name: "Classic Steak",
                      date: "Published in: 21/3/2023",
                      time: "30 min",
                      rating: 4.6),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  MainCard(
                      image: "assets/beefop5.jpg",
                      name: "Beef Burger",
                      date: "Published in: 19/3/2023",
                      time: "15 min",
                      rating: 4.5),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/beefop3.jpeg",
                      name: "Beef Ragu",
                      date: "Published in: 18/2/2023",
                      time: "20 min",
                      rating: 3.8),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/beefop4.jpg",
                      name: "Korean Meatballs",
                      date: "Published in: 3/1/2023",
                      time: "25 min",
                      rating: 4.9),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteMainPage3 extends StatefulWidget {
  const NoteMainPage3({super.key});

  @override
  State<NoteMainPage3> createState() => _NoteMainPageState3();
}

class _NoteMainPageState3 extends State<NoteMainPage3> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
        leading: OutlinedButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Fish Recipes",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.add, color: Colors.white))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.book_outlined), label: 'Recipes'),
        NavigationDestination(
            icon: Icon(Icons.star_outlined), label: 'Favorites'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account'),
      ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 480,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Image.asset(
                            "assets/profile.png",
                            width: 60,
                            height: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Good Day User123!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Text("What are we making today?",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/sfop1.jpeg",
                      name: "Smoked Salmon Toast",
                      date: "Published in: 21/3/2023",
                      time: "10 min",
                      rating: 4.6),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  MainCard(
                      image: "assets/sfop2.webp",
                      name: "Garlic Grilled Shrimp",
                      date: "Published in: 19/3/2023",
                      time: "15 min",
                      rating: 4.5),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/sfop3.jpg",
                      name: "Fish Tacos",
                      date: "Published in: 18/2/2023",
                      time: "20 min",
                      rating: 3.8),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/sfop4.jpg",
                      name: "Baked Tilapia",
                      date: "Published in: 3/1/2023",
                      time: "20 min",
                      rating: 4.9),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteMainPage4 extends StatefulWidget {
  const NoteMainPage4({super.key});

  @override
  State<NoteMainPage4> createState() => _NoteMainPageState4();
}

class _NoteMainPageState4 extends State<NoteMainPage4> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
        leading: OutlinedButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Veggie Recipes",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.add, color: Colors.white))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.book_outlined), label: 'Recipes'),
        NavigationDestination(
            icon: Icon(Icons.star_outlined), label: 'Favorites'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account'),
      ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 480,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Image.asset(
                            "assets/profile.png",
                            width: 60,
                            height: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Good Day User123!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Text("What are we making today?",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/vgop1.jpg",
                      name: "Veggie Pizza",
                      date: "Published in: 21/3/2023",
                      time: "20 min",
                      rating: 4.6),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 15,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  MainCard(
                      image: "assets/vgop2.jpg",
                      name: "Vegan Quesadillas",
                      date: "Published in: 19/3/2023",
                      time: "15 min",
                      rating: 4.5),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/vgop3.jpg",
                      name: "Veggie Sub",
                      date: "Published in: 18/2/2023",
                      time: "10 min",
                      rating: 3.8),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/vgop4.jpg",
                      name: "Vegetable Biryani",
                      date: "Published in: 3/1/2023",
                      time: "25 min",
                      rating: 4.9),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _Options();
}

class _Options extends State<Options> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
*/

/*
class _Options extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 173, 95),
        leading: OutlinedButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("What are we working with?",
            textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.settings, color: Colors.white))
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.star_outlined), label: 'Favorites'),
        NavigationDestination(
            icon: Icon(Icons.settings_outlined), label: 'Settings'),
        NavigationDestination(
            icon: Icon(Icons.account_box_outlined), label: 'Account')
      ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/chkn.webp"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Chicken >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {}),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/beef.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Beef >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {}),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/sf3.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Fish >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {}),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: new DecorationImage(
                    image: new AssetImage("assets/vg2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 250.0, top: 68.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      child: Text("Veggie >",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 91, 173, 95).withOpacity(0.8),
                                          onPrimary:
                                              Colors.white // Background color
                                          ),
                                      onPressed: () {}),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/pen.png",
                      name: "Today's Project",
                      date: "16/3/2023"),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  MainCard(
                      image: "assets/pen.png",
                      name: "Personal Items",
                      date: "13/2/2023"),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/pen.png", name: "Work", date: "4/1/2023"),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(children: [
                  MainCard(
                      image: "assets/pen.png",
                      name: "Important Dates",
                      date: "2/5/2022"),
                ]),
              ),
              OutlinedButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.amber,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NoteMainPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
*/
