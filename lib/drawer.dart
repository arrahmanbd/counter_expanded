
import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           UserAccountsDrawerHeader(
                  accountName: Text('AR Rahman'),
                  accountEmail: Text('arrahman.bd@outlook.com'),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/74553735?v=4',
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                    image: NetworkImage('https://picsum.photos/800'),
                    fit: BoxFit.cover,
                  )),
                ),
          const ListTile(
            //menu item of Drawer
            leading: Icon(Icons.home),
            title: Text('Home Page'),
          ),
          Accordion(
          maxOpenSections: 1,
          headerBackgroundColorOpened: Colors.black54,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          paddingListHorizontal: 0,
          headerBorderRadius: 0,
          contentBorderRadius: 0,
          headerPadding:
          const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          children: [
            AccordionSection(
              isOpen: true,
              rightIcon: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.arrow_drop_down, color: Colors.grey),
              ),
              headerBackgroundColor: Colors.transparent,
              headerBackgroundColorOpened: const Color.fromARGB(255, 236, 236, 236),
              contentBorderColor: const Color.fromARGB(255, 236, 236, 236),
              contentBorderRadius: 0,
              header: const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('My Profile'),
          ),
              content:  Column(
                children: [
                  const ListTile(
            leading: Icon(Icons.photo),
            title: Text('My Photos'),
          ),
          const ListTile(
            leading: Icon(Icons.music_note),
            title: Text('My Music'),
          ),
                ],
              ),
              contentHorizontalPadding: 0,
              contentBorderWidth: 1,
              // onOpenSection: () => print('onOpenSection ...'),
              // onCloseSection: () => print('onCloseSection ...'),
            ),
           AccordionSection(
              isOpen: true,
              rightIcon: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.arrow_drop_down, color: Colors.grey),
              ), 
              headerBackgroundColor: Colors.transparent,
              headerBackgroundColorOpened: const Color.fromARGB(255, 236, 236, 236),
              contentBorderColor: const Color.fromARGB(255, 236, 236, 236),
              contentBorderRadius: 0,
              
              header: const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
              content:  Column(
                children: [
                  const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.edgesensor_high),
            title: Text('Sensor Settings'),
          ),
                ],
              ),
              contentHorizontalPadding: 0,
              contentBorderWidth: 1,
              // onOpenSection: () => print('onOpenSection ...'),
              // onCloseSection: () => print('onCloseSection ...'),
            ),
          
          ],
        ),
         ListTile(
              onTap: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  //check if drawer is open
                  Navigator.pop(context); //context of drawer is different
                }
              },
              leading: const Icon(Icons.close),
              title: const Text("Close Drawer"))
        ],
      ),
    );
  }
}
