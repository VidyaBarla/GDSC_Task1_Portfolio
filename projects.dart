import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);


  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar (
          backgroundColor: Colors.blue[100],
          title: const Text('My Projects',
          style: TextStyle(
            fontSize:20,
            color: Colors.black,
          ),
         ),
        ),
        body:ListView(children: [ 
          ListTile(
            title: Text('Project 1'),
            subtitle: Text('Project to demonstrate what I learned in GDSC Flutter Circle'),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
            icon: const Icon(Icons.grid_3x3_outlined, color: Colors.black,),
            ),
            onTap:(){
              final Uri _url = Uri.parse('https://github.com/');
              _launchUrl(_url);
            },
          ),
          ListTile(
            title: Text('Project 2'),
            subtitle: Text('Project to demonstrate what I learned in GDSC Flutter Circle'),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
            icon: const Icon(Icons.grid_3x3_outlined, color: Colors.black,),
            ),
              onTap:(){
                final Uri _url = Uri.parse('https://github.com/');
                _launchUrl(_url);
              },          
            ),
            ListTile(
             title: Text('Project 3'),
            subtitle: Text('Project to demonstrate what I learned in GDSC Flutter Circle'),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
            icon: const Icon(Icons.grid_3x3_outlined, color: Colors.black,),
            ),
            onTap:(){
              final Uri _url = Uri.parse('https://github.com/');
              _launchUrl(_url);
            }, 
          ),
        ],
      ),
    ),);
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}