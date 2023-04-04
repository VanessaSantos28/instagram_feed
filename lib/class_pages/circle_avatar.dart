import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  final String imagemURI;
  final String nomeUsuario;

  const CircleAvatarPage({required this.imagemURI, required this.nomeUsuario});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90), color: Colors.pink),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 66,
          width: 66,
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imagemURI),
          ),
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
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90), color: Colors.pink),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 66,
          width: 66,
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: NetworkImage(aovivoLogo),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.pink,
                ),
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
      ),
    ]);
  }
}
