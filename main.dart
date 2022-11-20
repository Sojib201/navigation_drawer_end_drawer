import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AppBar")),
        backgroundColor: Colors.green,
        elevation: 50,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  onDetailsPressed: () {
                    MySnackBar("Drawer Header", context);
                  },
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text(
                    "Sojib",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  accountEmail: Text("Sojib@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  currentAccountPicture: Image.network(
                      "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/307007947_1148608179058883_5983143140396414337_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHKfzebhRzz_t9BvjdPzmMaUhS65reBurhSFLrmt4G6uNURpDBnAh1d4IuxjdDzK-VtBuZVDj1liWhG7383W26H&_nc_ohc=oiDtjOadZQQAX_980zO&_nc_ht=scontent.fdac135-1.fna&oh=00_AfAZuka26ZxUY10vA1G3B7l7XT_TYX3WgyNMqfvd9RbUWw&oe=637FB58C"),
                )),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {
                MySnackBar("Home", context);
              },
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              onTap: () {
                MySnackBar("Email", context);
              },
              title: Text("Email"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              onTap: () {
                MySnackBar("Phone", context);
              },
              title: Text("Phone"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  onDetailsPressed: () {
                    MySnackBar("Drawer Header", context);
                  },
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text(
                    "Sojib",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  accountEmail: Text("Sojib@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  currentAccountPicture: Image.network(
                      "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/307007947_1148608179058883_5983143140396414337_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHKfzebhRzz_t9BvjdPzmMaUhS65reBurhSFLrmt4G6uNURpDBnAh1d4IuxjdDzK-VtBuZVDj1liWhG7383W26H&_nc_ohc=oiDtjOadZQQAX_980zO&_nc_ht=scontent.fdac135-1.fna&oh=00_AfAZuka26ZxUY10vA1G3B7l7XT_TYX3WgyNMqfvd9RbUWw&oe=637FB58C"),
                )),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {
                MySnackBar("Home", context);
              },
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              onTap: () {
                MySnackBar("Email", context);
              },
              title: Text("Email"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              onTap: () {
                MySnackBar("Phone", context);
              },
              title: Text("Phone"),
            ),
          ],
        ),
      ),
    );
  }
}
