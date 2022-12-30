import 'package:amb_app/constant/routes.dart';
import 'package:amb_app/views/ProfilePage.dart';
import 'package:flutter/material.dart';
import '../custom widgets/cardbutton.dart';

class ProfilePhome extends StatefulWidget {
  const ProfilePhome({super.key});

  @override
  State<ProfilePhome> createState() => _ProfilePhomeState();
}

class _ProfilePhomeState extends State<ProfilePhome> {
  int currentIndex = 0;
  final screens = [
    const ProfilePhome(),
    const Center(child: Text('Notification', style: TextStyle(fontSize: 60))),
    const Profilepage(),
    const Center(child: Text('Logout', style: TextStyle(fontSize: 60))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil(homepageRoute, (route) => false);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardButton(
                tap: () {},
                text: 'Book an Ambulance',
                details:
                    'If you or any of your loved ones are in the need of Medical services.You can request for our services,on the day and time of your wish.',
                link: 'assets/images/Ambulance1.jpg',
                pressbutton: 'Request',
              ),
              CardButton(
                tap: () {},
                text: 'Find Now',
                details:
                    'You can locate nearby ambulances and hospitals close to you',
                link: 'assets/images/Maps.jpg',
                pressbutton: 'Find Now',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => {currentIndex = index}),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            label: 'Notifications',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.logout,
              color: Colors.grey,
            ),
            label: 'Logout',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
// @override
// Widget @override
// Widget build(BuildContext context) => Scaffold(body: IndexedStack(children: screens,),)
// }