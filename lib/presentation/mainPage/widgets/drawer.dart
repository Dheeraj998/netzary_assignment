import 'package:flutter/material.dart';
import 'package:netzary_assignment/presentation/mainPage/widgets/drawer_tile.dart';

class MainScreenDrawer extends StatelessWidget {
  const MainScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white38,
              ),
            ),
            ListTile(
              title: Center(
                  child: Text(
                'Dheeraj K',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
              subtitle: Center(
                child: Text(
                  '917994474846',
                  style: TextStyle(color: Colors.white38),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: const Text(
                  'send your requirments',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "can't find the right property?",
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.question_answer,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const DrawerTile(
              title: 'settings',
              subtitle: 'theme',
              icon: Icons.settings,
              iconColor: Colors.blue,
            ),
            const DrawerTile(
              title: 'Help and support',
              subtitle: 'FAQs and Quick links',
              icon: Icons.help,
              iconColor: Colors.red,
            ),
            const DrawerTile(
              title: 'About',
              subtitle: 'Share rate and know more',
              icon: Icons.question_answer,
              iconColor: Colors.green,
            ),
            const DrawerTile(
              title: 'My listings',
              subtitle: 'Properties posted by you',
              icon: Icons.list,
              iconColor: Colors.orange,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 60,
                child: Center(
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.calculate,
                        color: Colors.orange,
                      ),
                      Text(
                        'Calculate commission',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
