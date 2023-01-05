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
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 25, left: 27, right: 40, bottom: 20),
            height: 105,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 209, 133, 133),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, offset: Offset(5, 5), color: Colors.grey)
                ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 40, top: 15, bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 200,
                      color: const Color.fromARGB(255, 196, 196, 196),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 168, 216, 173),
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 35, left: 27, right: 60, bottom: 20),
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 133, 133),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(5, 5),
                          color: Colors.grey)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 168, 216, 173),
                        )
                      ]),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 40),
                  child: Container(
                    // alignment: Alignment.center,
                    height: 45,
                    width: 150,
                    color: const Color.fromARGB(255, 196, 196, 196),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
