import 'package:flutter/material.dart';

//Medi Card -------------------------------------------------------------------------------------------

class MediCards extends StatelessWidget {
  const MediCards({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (rowIndex) => Row(
            children: List.generate(
              3,
              (cardIndex) => Container(
                margin: EdgeInsets.only(right: 10),
                child: SmallCard(
                  text: 'Card ${rowIndex * 3 + cardIndex}',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SmallCard extends StatelessWidget {
  final String text;

  const SmallCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 188, 133, 163),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

//AvatarSection--------------------------------------------------------------------------

class AvatarSection extends StatelessWidget {
  const AvatarSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatarWidget(radius: 40),
          SizedBox(width: 20),
          CircleAvatarWidget(radius: 60),
          SizedBox(width: 20),
          CircleAvatarWidget(radius: 40),
        ],
      ),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  final double radius;

  const CircleAvatarWidget({Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.blue,
    );
  }
}
//Consult---------------------------------------------------------------------------------------

class Consult extends StatelessWidget {
  const Consult({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 3 / 4,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 188, 133, 163),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.6),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Doctor?",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 74, 123, 166),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text("Consult",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//Features - -----------------------------------

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 3 / 4,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 188, 133, 163),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    featureC(text: "Feature"),
                    featureC(text: "Feature"),
                    featureC(text: "Feature"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    featureC(text: "Feature"),
                    featureC(text: "Feature"),
                    featureC(text: "Feature"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class featureC extends StatelessWidget {
  final String text;

  const featureC({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 7,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.star,
                size: 50,
                color: Color.fromARGB(255, 74, 123, 166),
              ),
              const SizedBox(height: 8),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
