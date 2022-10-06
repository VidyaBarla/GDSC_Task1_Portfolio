import 'package:flutter/material.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PortFolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      initialRoute: 'MainPage',
      routes: {
        'projects_page': (context) => const ProjectsPage(),
      },
    );
  }

}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}


class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Portfolio')),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(60),
        child:Column(
          children:[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/vidya_image.jpg') ,
            ),
            SizedBox(
              height:20,
              ),
            Text(
              'Vidya Barla',
              style: TextStyle(fontSize:28,
              fontWeight: FontWeight.bold)
              ),
            const SizedBox(height:8),
            Text(
              'CSE Undergrad',
              style: TextStyle(fontSize: 20, color: Colors.black,)
            ),
            const SizedBox(height:50),
            Container(
              margin: const EdgeInsets.symmetric(vertical:10,horizontal: 10 ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[100],
                
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.email_outlined),
                  SizedBox(
                    width:10,
                  ),
                  Text(
                    'vidyabarla136@gmail.com'
                  ),
                ],
              ),
            ),
              
            GestureDetector(
              onTap:() {
                Navigator.pushNamed(context, 'projects_page');
              },
              child:Container(
                margin: const EdgeInsets.symmetric(vertical:10, horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.file_copy),
                    SizedBox(
                      width:10,
                    ),
                    Text(
                      'Projects',
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:() {
                final Uri _url = Uri.parse('https://linkedin.com/');
                _launchUrl(_url);
              },
              child:Container(
                margin: const EdgeInsets.symmetric(vertical:10, horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                
                child: Row(
                  children: const [

                    Icon(Icons.connect_without_contact),
                    SizedBox(
                      width:10,
                    ),
                    Text(
                      'Connect with me on linkdIn!',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

                        
                           