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
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _countersSection(),
            _usernamerSection(),
            _biographySection(),
            _actionsSection(),
            _storiesSection(),
            _galerySection()
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

  _usernamerSection() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Victor",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  _biographySection() {
    String bio = """
Love travelling offroad. Just wanna share my best pictures with the world. 
#travel
#find the best places
""";
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(bio),
    );
  }

  _actionsSection() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Text("Modifier le profil"),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Text("Partager le profil"),
          ),
        ),
      ],
    );
  }

  _storiesSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Stories à la une"),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }

  _galerySection() {
    // Random random = Random();
    // int randomNumber = random.nextInt(500) + 1;

    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        children: [
          // Image.network("https://picsum.photos/id/$randomNumber/200"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
          Image.asset("assets/images/profil.PNG"),
        ],
      ),
    );
  }
}
