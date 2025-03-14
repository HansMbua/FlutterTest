import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late Map<String, String> profileInfo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileInfo = {
      "name": "John Doe",
      "profession": "PROFESSIONAL BUILDER",
      "status": "verified",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s"
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Account settings',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.orangeAccent.withOpacity(.1),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 35,
              ),
              width: double.maxFinite,
              child: Column(
                children: [
                  Material(
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    elevation: 20,
                    shadowColor: Colors.grey.withOpacity(.1),
                    child: Image.network(
                      profileInfo['image']!,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          profileInfo['status'] == 'verified'
                              ? Icons.check
                              : Icons.cancel_outlined,
                          size: 12,
                        ),
                        SizedBox(width: 2),
                        Text(
                          profileInfo['status']!,
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    profileInfo['name']!,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    profileInfo['profession']!,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Personal Information'),
              leading: Icon(Icons.person_outlined),
            ),
            ListTile(
              title: Text('Order History'),
              leading: Icon(Icons.history),
            ),
            ListTile(
              title: Text('Payment Methods'),
              leading: Icon(Icons.payment),
            ),
            ListTile(
              title: Text('Account Settings'),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 100,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        surfaceTintColor: Colors.orangeAccent,
        shadowColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Icon(Icons.home_outlined),
                  SizedBox(height: 5),
                  Text('Home'),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Icon(Icons.person_search_outlined),
                  SizedBox(height: 5),
                  Text('Find agent'),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Icon(Icons.topic_outlined),
                  SizedBox(height: 5),
                  Text('Rent tool'),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Icon(Icons.inbox_outlined),
                  SizedBox(height: 5),
                  Text('Inbox'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
