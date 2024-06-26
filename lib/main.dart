import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Image.asset("Wireframe/atom_orangelogo_small.png"),
          actions: const [
            Bar(path: "Wireframe/atom_primaryicon_search_outlined.png"),
            Bar(path: "Wireframe/Notification.png"),
            Bar(path: "Wireframe/atom_primaryicon_assistance_outlined.png"),
            Bar(path: "Wireframe/Profil.png"),
          ],
        ),
        body: Hld(),
      ),
    ),
  );
}

class Hld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Homee(),
          Homeee(),
          Homeeee(),
          Homeeeee(),
          Homeeeeee(),
        ],
      ),
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
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            children: [
              Text("Bienvenue, +225 0767516592"),
            ],
          ),
          SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(logo: "Wireframe/Group 1365.png", data: "Recharger          ."),
                  ActionButton(logo: "Wireframe/Content image.png", data: "Acheter un pass"),
                  ActionButton(logo: "Wireframe/Thumbnail.png", data: "Transfert d'argent"),
                  ActionButton(logo: "Wireframe/Thumbnail-1.png", data: "Paiement marchand"),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Services",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              ActionButton(logo: "Wireframe/Illustration.png", width: 124, height: 162, data: "CAF 2023 Match Centre"),
              const SizedBox(width: 10),
              Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(logo: "Wireframe/atom_quickicon_deals.png", data: "Promo"),
                  SizedBox(width: 10,),
                  ActionButton(logo: "Wireframe/Trace 39.png", data: "Ma SIM"),
                ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(logo: "Wireframe/atom_quickicon_ozen.png", data: "O'zen               ."),
                  const SizedBox(width: 10),
                  ActionButton(logo: "Wireframe/Trace 25416.png", data: "Live Streaming"),
                ],
              )
              
            ],
          ),
            ],
          ),
          
        ],
      ),
    );
  }
}


class ActionButton extends StatelessWidget {
  ActionButton({Key? key, required this.logo, this.data = "", this.width = 55, this.height = 55});

  final String logo;
  final double width;
  final double height;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 204, 204, 204),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(top: 20),
          height: height,
          width: width,
          child: Image.asset(
            logo,

          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: width + 6,
          child: Text(
            data,
            textAlign: TextAlign.center,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class Section1 extends StatelessWidget {
  Section1({Key? key, required this.logo, this.title, this.name, this.sub});

  var sub;
  var name;
  final logo;
  var title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 80,
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
  const Bar({Key? key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.asset(path),
    );
  }
}

class Homeeee extends StatelessWidget {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("Payer & Transfert"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(logo: "Wireframe/SOS.png", data: "SOS"),
              ActionButton(logo: "Wireframe/content.png", data: "Transfert credit",),
              ActionButton(logo: "Wireframe/atom_quickicon_paybill.png", data: "Facture Orange",),
              ActionButton(logo: "Wireframe/Trace 39.png", data: "Gérer ma Sim",),
            ],
          ),
        ],
      ),
    );
  }
}

class Homeeeee extends StatelessWidget {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("Mes achats"),
            ],
          ),
          Row(
            children: [
              ActionButton(logo: "Wireframe/atom_secondaryicon_myservices.png", data: "Mes services",),
              const SizedBox(width: 10),
              ActionButton(logo: "Wireframe/atom_secondaryicon_mytickets.png", data: "Tickets           .",),
            ],
          ),
        ],
      ),
    );
  }
}

class Homeeeeee extends StatelessWidget {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("Besoin d'aide ?"),
            ],
          ),
          Row(
            children: [
              ActionButton(logo: "Wireframe/atom_secondaryicon_faq.png", data: "Assistance en ligne"),
              const SizedBox(width: 10),
              ActionButton(logo: "Wireframe/atom_secondaryicon_bookspot.png", data: "Trouver une agence",),
              const SizedBox(width: 10),
              ActionButton(logo: "Wireframe/atom_quickicon_parainnage.png", data: "Parrainage             .",),
            ],
          ),
        ],
      ),
    );
  }
}
