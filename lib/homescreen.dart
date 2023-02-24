import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('Clother',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search), onPressed: () {  },
            iconSize: 30,
          ),
          IconButton(onPressed: (){},
              icon:Icon(Icons.favorite),
            iconSize: 27,
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_bag),
              iconSize:27,
          ),
        ],
      ),
      drawer: Drawer(
        width: screenSize.width/1.5,
        child: ListView(
          children: <Widget>[
            Container(
              width: 30,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0 ),
                child: Text(
                  'Shop for',
                ),
              ),
            ),
            ListTile(
              splashColor: Colors.blue[400],
              title: Text('Kids',
              ),
              onTap: () { Navigator.pop(context); },
            ),
            Divider(
              height:1,
              thickness: 2,
            ),
            ListTile(
              title: Text('Women'),
              onTap: () { Navigator.pop(context); },
            ),
            Divider(
              height:1,
              thickness: 2,
            ),
            ListTile(
              title: Text('Men'),
              onTap: (){ Navigator.pop(context) ; },
            ),
            Divider(
              height:1,
              thickness: 2,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('DEAL OF THE DAY',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                  wordSpacing: 5,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: screenSize.width ,
            height: screenSize.height/1.5,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child : Column(
                      children: [
                        Image.asset('assets/images/tshirt.webp'),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'tshirts',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.height/1.5,
                    width: 10,
                  ),
                  Container(
                    child : Column(
                      children: [
                        Image.asset('assets/images/pants.webp'),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'pants',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.height/1.5,
                    width: 10,
                  ),
                  Container(
                    child : Column(
                      children: [
                        Image.asset('assets/images/cargos.webp'),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'cargos',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.height/1.5,
                    width: 10,
                  ),
                  Container(
                    child : Column(
                      children: [
                        Image.asset('assets/images/shoes.webp'),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Shoes',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items:<BottomNavigationBarItem> [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.) )
      //   ],
      //
      // ),
    );
  }
}
