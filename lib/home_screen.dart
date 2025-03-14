import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int pageIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final profileData = {
      "name": "John Doe",
      "profession": "PROFESSIONAL PLUMBER",
      "status": "verified",
      "image":
          "https://th.bing.com/th/id/OIP.DtSNsWx_-jU3Aw2bplDzVQHaHa?rs=1&pid=ImgDetMain.png",
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Account settings'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: [
            Container(
              color: Colors.brown.shade100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: Column(
                spacing: 8,
                children: [
                  ClipOval(
                    child: Image.network(
                      profileData['image'] ?? '',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.brown.shade50,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text(profileData['status'] ?? 'Verified'),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(profileData['name'] ?? ''),
                  Text(profileData['profession'] ?? ''),
                ],
              ),
            ),
            CustomTile(
              icon: CupertinoIcons.person,
              text: 'Personal Information',
            ),
            CustomTile(icon: Icons.history, text: 'Order History'),
            CustomTile(icon: Icons.payment, text: 'Payment Methods'),
            CustomTile(icon: Icons.settings, text: 'Account Settings'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.brown.shade100,
        selectedItemColor: Colors.brown,
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey, fontSize: 12),
        selectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Find Agent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Rent tool',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueGrey),
      title: Text(text, style: TextStyle(color: Colors.blueGrey)),
    );
  }
}
