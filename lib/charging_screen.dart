import 'package:bike_application/utils/utils.dart';
import 'package:flutter/material.dart';

class ChargingScreen extends StatelessWidget {
  const ChargingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Charging",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Hero(
        tag: "charge",
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                offset: const Offset(5, 5),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                offset: const Offset(-3, -3),
                blurRadius: 10,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.electric_bike,
            size: 35,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  ShowUpAnimation(
                    delay: 1500,
                    child: Image.asset(
                      "assets/bike.png",
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  ShowUpAnimation(
                    delay: 1000,
                    child: Container(
                      height: 170,
                      width: 170,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.green.withOpacity(0.6),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: Colors.green.withOpacity(0.1),
                            offset: const Offset(-5, -5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 170,
                        width: 170,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 11, 232, 18),
                        ),
                        alignment: Alignment.center,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bolt,
                              size: 35,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            Text(
                              "85%",
                              style: TextStyle(
                                color: Color.fromARGB(232, 255, 255, 255),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                ShowUpAnimation(
                  delay: 350,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Range",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "120",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Kms",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Range",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "130",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Kms",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ShowUpAnimation(
                  delay: 300,
                  child: Center(
                    child: Container(
                      width: 7,
                      margin: const EdgeInsets.only(bottom: 50),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 221, 17),
                        border: Border.all(
                          color: const Color.fromARGB(255, 15, 199, 21)
                              .withOpacity(0.6),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 51, 183, 56)
                                .withOpacity(0.4),
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            color: const Color.fromARGB(255, 10, 202, 16)
                                .withOpacity(0.4),
                            offset: const Offset(-5, -5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
