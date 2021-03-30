import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

String lorem =
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
                InkWell(
                    child: Chip(
                        label: Text("eva01@nerv.com"),
                        avatar: Icon(Icons.email_outlined, color: Colors.white),
                        labelPadding: EdgeInsets.all(8),
                        backgroundColor: Colors.red,
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 24),
                        elevation: 8),
                    onTap: () => launchMail("eva01@nerv.com")),
                SizedBox(height: 16),
                InkWell(
                    child: Chip(
                        label: Text("mridul-dhiman"),
                        avatar: Icon(Icons.adb_outlined, color: Colors.white),
                        labelPadding: EdgeInsets.all(8),
                        backgroundColor: Colors.black,
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 24),
                        elevation: 8),
                    onTap: () => launchUrl("https://github.com/mridul-dhiman")),
                SizedBox(height: 16),
                InkWell(
                  child: Chip(
                      label: Text("mridul-d"),
                      avatar: Icon(Icons.work_outline, color: Colors.white),
                      labelPadding: EdgeInsets.all(8),
                      backgroundColor: Colors.blue.shade600,
                      labelStyle: TextStyle(color: Colors.white, fontSize: 24),
                      elevation: 8),
                  onTap: () =>
                      launchUrl("https://www.linkedin.com/in/mridul-d"),
                ),
                SizedBox(height: 16),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("Android"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.green.shade500,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("Java"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.orange.shade700,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("Kotlin"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.blue,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("Firebase"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.yellow.shade700,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("Raspberry Pi"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.red.shade500,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("C++"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.blue,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("CNC"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.yellow.shade700,
                          elevation: 8),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          label: Text("Auto CAD"),
                          labelStyle: TextStyle(color: Colors.white),
                          backgroundColor: Colors.red.shade700,
                          elevation: 8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Future<void> launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
  } else {
    throw "Url Launch Failed $url";
  }
}

Future<void> launchMail(String mail) async {
  String createMail = "mailto:$mail?subject=Mail from flutter app";
  if (await canLaunch(createMail)) {
    await launch(createMail);
  } else {
    throw "Mail Launch Failed $createMail";
  }
}
