import 'package:employee_app/controller/apiconection.dart';
import 'package:employee_app/modelclass.dart';
import 'package:employee_app/view/Secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    fetchAlbum();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ramees',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          bottomOpacity: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        body: FutureBuilder<List<Empty>>(
          future: fetchAlbum(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.6),
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ramees()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 185, 128, 124)),
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 40,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      snapshot.data![index].profileImage ?? ""),
                                  radius: 35,
                                ),
                              ),
                              Text(
                                snapshot.data![index].name ?? "",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          )),
                    ),
                  );
                },
              );
            } else
              return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
