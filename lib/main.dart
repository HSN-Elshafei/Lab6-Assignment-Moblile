import 'package:flutter/material.dart';

void main() {
  runApp(const basket_ball());
}

// ignore: camel_case_types
class basket_ball extends StatefulWidget {
  const basket_ball({super.key});

  @override
  State<basket_ball> createState() => _basket_ballState();
}

// ignore: camel_case_types
class _basket_ballState extends State<basket_ball> {
  // ignore: non_constant_identifier_names
  int teamA_points = 0;

  // ignore: non_constant_identifier_names
  int teamB_points = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 80, 176),
          title: const Text("Basket ball Score counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        teamA_points.toString(),
                        style: const TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA_points++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize: const Size(130, 40),
                        ),
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA_points += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize: const Size(130, 40),
                        ),
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA_points += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize: const Size(130, 40),
                        ),
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                SizedBox(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        teamB_points.toString(),
                        style: const TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB_points++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize: const Size(130, 40),
                        ),
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB_points += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize: const Size(130, 40),
                        ),
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB_points += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize: const Size(130, 40),
                        ),
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamA_points = 0;
                  teamB_points = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
                minimumSize: const Size(130, 40),
              ),
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}