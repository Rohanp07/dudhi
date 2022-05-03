import 'package:flutter/material.dart';
import 'package:focustimer/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green2,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: green1),
        title: Text(
          "About Me",
          style: TextStyle(
            color: green1,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/aarushi.png"),
                radius: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: green1,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                decoration: BoxDecoration(
                  color: green1,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Designed & Developed By",
                          style: TextStyle(
                            color: green2,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Aarushi Sharma",
                          style: TextStyle(
                            color: green4,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0.0,
                      top: 0.0,
                      right: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  "https://www.instagram.com/_aarushi1501_/");
                            },
                            child: Image.asset("assets/insta.png"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL("https://github.com/aaru15sharma");
                            },
                            child: Image.asset("assets/git.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 92,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: green1,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Class: D15B",
                      style: TextStyle(
                        color: green4,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Roll No.: 54",
                      style: TextStyle(
                          color: green4,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
