import 'dart:math';

import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "tor.mth",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.search, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.add_rounded, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.smart_display_outlined, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 13,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profil.PNG"),
                radius: 11,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            _countersSection(),
            SizedBox(height: 10),
            _biographySection(),
            SizedBox(height: 10),
            _actionsSection(),
            SizedBox(height: 10),
            _storiesSection(),
            _gallerySection()
          ],
        ),
      ),
    );
  }

  _countersSection() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/profil.PNG"),
          radius: 40,
        ),
        Expanded(
          child: Column(
            children: [
              Text("20", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("publications"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text("2 350", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("followers"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(" 1 373", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("followings"),
            ],
          ),
        ),
      ],
    );
  }

  _biographySection() {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: "Victor\n",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
              text:
                  "Love travelling offroad. Just wanna share my best pictures with the world.\n"),
          TextSpan(text: "#travel\n"),
          TextSpan(text: "#findthebestplaces"),
        ],
      ),
    );
  }

  _actionsSection() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 4),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Modifier le profil"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Partager le profil"),
            ),
          ),
        ),
      ],
    );
  }

  _storiesSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Stories à la une", style: TextStyle(fontWeight: FontWeight.bold)),
        Icon(Icons.arrow_drop_down),
      ],
    );
  }

  _gallerySection() {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(icon: Icon(Icons.photo_library_outlined)),
                Tab(icon: Icon(Icons.person_outline)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: _randomImages(),
                  ),
                  Icon(Icons.person_outline),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _randomImages() {
    List<Widget> gridElements = [];

    for (var i = 0; i < 12; i++) {
      gridElements.add(_randomImage());
    }

    return gridElements;
  }

  Widget _randomImage() {
    // renvoie un entier entre 1 et 500
    var randomIndex = Random().nextInt(100) + 1;

    return Image.network(
      "https://picsum.photos/id/$randomIndex/250",
      errorBuilder: (_, __, ___) {
        return Placeholder();
      },
    );
  }
}
