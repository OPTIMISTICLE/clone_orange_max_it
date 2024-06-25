import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset("Wireframe/atom_orangelogo_small.png"),
          actions: const [
            Bar(path: "Wireframe/atom_primaryicon_search_outlined.png"),
            Bar(path: "Wireframe/Notification.png"),
            Bar(path: "Wireframe/atom_primaryicon_assistance_outlined.png"),
            Bar(path: "Wireframe/Profil.png"),
          ],
        ),
        body: hld(),
      ),
    ),
  );
}

class hld extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Homee(),
        Homeee()
      ],
    );
  }
}


class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.all(30),
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            children: [
              Text("Bienvenue, +225 07 67516592"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Section1(
                    logo: "Wireframe/Functional_UI - ic_Donation 1-1.png",
                    title: "Compte Principal",
                    sub: "FCFA",
                  ),
                  Section1(
                    logo: "Wireframe/Functional_UI - ic_Donation 1.png",
                    title: "Solde Principal",
                    sub: "",
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(logo: "Wireframe/Group 1365.png"),
                  ActionButton(logo: "Wireframe/Content image.png"),
                  ActionButton(logo: "Wireframe/Thumbnail.png"),
                  ActionButton(logo: "Wireframe/Thumbnail-1.png"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Homeee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.all(30),
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Text("Services"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                child: const ActionButton(logo: "Wireframe/Illustration.png")),
              Container(
                height: 250,
                width: 250,
                child: Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 13.0, // Optional: spacing between rows
                      crossAxisSpacing: 15.0, // Optional: spacing between columns
                    ),
                    itemCount: 4, // Adjust this as needed
                    itemBuilder: (BuildContext context, int index) {
                      // You can use a list of image paths if you have multiple images
                      List<String> logos = [
                        "Wireframe/atom_quickicon_deals.png",
                        "Wireframe/Trace 39.png",
                        "Wireframe/atom_quickicon_ozen.png",
                        "Wireframe/Trace 25416.png"
                      ];
                      return ActionButton(logo: logos[index]);
                    },
                    shrinkWrap: true,
                    padding: EdgeInsets.all(25),
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.logo});
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 204, 204, 204),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.only(top: 30),
      height: 70,
      child: Image.asset(logo),
    );
  }
}

// ignore: must_be_immutable
class Section1 extends StatelessWidget {
  Section1({
    super.key,
    required this.logo,
    this.title,
    this.name,
    this.sub,
  });

  var sub;
  var name;
  final logo;
  var title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(7),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(logo),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Color.fromARGB(255, 87, 86, 86)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "***** $sub",
                      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Image.asset("Wireframe/icon.png"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  const Bar({super.key, required this.path});

  final String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.asset(path),
    );
  }
}
