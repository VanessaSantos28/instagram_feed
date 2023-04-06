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
        height: 66,
        width: 66,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              nomeUsuario,
              style: TextStyle(color: Colors.white),
            )),
      ),
      Container(
        height: 66,
        width: 66,
      ),
      Container(
        decoration: kCircleDecoration,
        height: 66,
        width: 66,
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          backgroundImage: NetworkImage(imagemURI),
        ),
      ),
    ]);
  }
}

class LiveAvatar extends StatelessWidget {
  final String aovivoLogo;

  const LiveAvatar({super.key, required this.aovivoLogo});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 66,
        width: 66,
        decoration: kCircleDecoration,
      ),
      Container(
        height: 66,
        width: 66,
        padding: const EdgeInsets.all(5),
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
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class UserCircleAvatar extends StatelessWidget {
  final String imagemUser;

  const UserCircleAvatar({super.key, required this.imagemUser});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 66,
        width: 66,
      ),
      Container(
        height: 66,
        width: 66,
        padding: const EdgeInsets.all(5),
        child: GestureDetector(
          onTap: () {
            print("Stories apertado");
          },
          child: CircleAvatar(
              backgroundImage: NetworkImage(imagemUser),
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
    ]);
  }
}
