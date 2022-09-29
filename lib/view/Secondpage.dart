import 'dart:ffi';
import 'dart:ui';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:employee_app/controller/apiconection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ramees extends StatelessWidget {
  const ramees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "cr",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 228, 167, 162),
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.arrow_back)),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqPpuDVl7VkPB137PlcOCjCHGGdkCnWXp4JQ&usqp=CAU'),
                        ),
                      ),
                      Text(
                        'cr',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 150),
                      child: Text(
                        'ID:1',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100, top: 15),
                      child: Text(
                        'user name:\nRAMEES',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50, top: 15),
                      child: Text(
                        'Email:\nramees@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100, top: 15),
                      child: Text(
                        'phone:\n8921199651',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100, top: 15),
                      child: Text(
                        'website:\nramees.me',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'company',
                  style: TextStyle(color: Color.fromARGB(255, 243, 122, 85)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Name:Edapt',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'catch Phrase:proactive didactic\ncontingency',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bs:harness real-time e-markets',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Address',
                  style: TextStyle(color: Color.fromARGB(255, 255, 119, 78)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'chelakkoden(H)pathaikkara perinthalmanna\n8921199651',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              GestureDetector(
                onTap: () => MapsLauncher.launchCoordinates(
                  37.4220041,
                  -122.0862462,
                ),
                child: Image.asset(
                  'assets/google-map-background-1900x1170.png',
                  scale: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
