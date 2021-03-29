import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var lorem =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris finibus lectus vitae lorem ultricies, ut efficitur erat molestie. Cras efficitur porttitor quam, nec commodo neque elementum id. Vestibulum finibus sed nisi feugiat tempor. Pellentesque at dapibus felis, id mattis metus. Duis mauris erat, hendrerit tristique rutrum id, tincidunt vel justo. Sed eget hendrerit lectus, vel tincidunt enim. Aenean lobortis leo dui, id imperdiet metus faucibus vel. Nulla nulla purus, tempus a feugiat nec, pharetra id dolor.";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppCode(),
    );
  }
}

class AppCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Portfolio"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                                "https://wallpapercave.com/wp/wp4083200.jpg")))),
                SizedBox(height: 16),
                Text("Mridul Dhiman", style: TextStyle(fontSize: 24)),
                SizedBox(height: 16),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("Android App Developer",
                            style: TextStyle(fontSize: 24)))),
                SizedBox(height: 16),
                Text(lorem, textAlign: TextAlign.justify),
                SizedBox(height: 16),
                Chip(
                    label: Text("eva01@nerv.com"),
                    avatar: Icon(Icons.email_outlined, color: Colors.white),
                    labelPadding: EdgeInsets.all(8),
                    backgroundColor: Colors.red,
                    labelStyle: TextStyle(color: Colors.white, fontSize: 24)),
                SizedBox(height: 16),
                Chip(
                    label: Text("mridul-dhiman"),
                    avatar: Icon(Icons.adb_outlined, color: Colors.white),
                    labelPadding: EdgeInsets.all(8),
                    backgroundColor: Colors.black,
                    labelStyle: TextStyle(color: Colors.white, fontSize: 24)),
                SizedBox(height: 16),
                Chip(
                    label: Text("mridul-d"),
                    avatar: Icon(Icons.work_outline, color: Colors.white),
                    labelPadding: EdgeInsets.all(8),
                    backgroundColor: Colors.blue.shade600,
                    labelStyle: TextStyle(color: Colors.white, fontSize: 24)),
                SizedBox(height: 16),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("Android"),backgroundColor: Colors.green.shade700),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("Java"),backgroundColor: Colors.orange.shade700),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("Kotlin"),backgroundColor: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("Firebase"),backgroundColor: Colors.yellow.shade700),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("Raspberry Pi"),backgroundColor: Colors.green.shade500),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("C++"),backgroundColor: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("CNC"),backgroundColor: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(label: Text("Auto CAD"),backgroundColor: Colors.red.shade700),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
