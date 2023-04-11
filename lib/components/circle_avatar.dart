import 'package:flutter/material.dart';
import 'package:instagram_app/components/constants.dart';

class CircleAvatarPage extends StatelessWidget {
  final String imagemURI;
  final String nomeUsuario;

  const CircleAvatarPage({required this.imagemURI, required this.nomeUsuario});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 72,
        width: 72,
      ),
      Column(
        children: [
          Container(
            decoration: kCircleDecoration,
            height: 72,
            width: 72,
            padding: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imagemURI),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            nomeUsuario,
            style: kNameStyle,
          ),
        ],
      ),
    ]);
  }
}

class LiveAvatar extends StatelessWidget {
  final String aovivoLogo;
  final String nameAoVivo;

  const LiveAvatar(
      {super.key, required this.aovivoLogo, required this.nameAoVivo});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: kCircleDecoration,
            padding: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(aovivoLogo),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: kTextContainer,
                  padding: EdgeInsets.all(2),
                  child: Text(
                    "AO VIVO",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            nameAoVivo,
            style: kNameStyle,
          ),
        ],
      ),
    ]);
  }
}

class UserCircleAvatar extends StatelessWidget {
  final String imageUser;
  final String ownerName;

  const UserCircleAvatar(
      {super.key, required this.imageUser, required this.ownerName});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 72,
        width: 72,
      ),
      Column(
        children: [
          Container(
            height: 72,
            width: 72,
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                print("Stories apertado");
              },
              child: CircleAvatar(
                  backgroundImage: NetworkImage(imageUser),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: Image.asset("assets/images/icon_plus.png"),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            ownerName,
            style: kNameStyle,
          ),
        ],
      ),
    ]);
  }
}
