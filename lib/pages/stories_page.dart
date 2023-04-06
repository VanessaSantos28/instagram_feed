import 'package:flutter/material.dart';
import '../components/circle_avatar.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Divider(
          thickness: 0.5,
          color: Colors.grey,
        ),
        ListView(
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.horizontal,
          children: [
            const UserCircleAvatar(
              imagemUser:
                  'https://pps.whatsapp.net/v/t61.24694-24/300950928_183454744095172_2617576791638701973_n.jpg?ccb=11-4&oh=01_AdTdrMH5-eHfm7aX3rCMwMtEddKrVFwLIfS9tNsQwnT7eQ&oe=643AC05E',
            ),
            const SizedBox(
              width: 10,
            ),
            const LiveAvatar(
              aovivoLogo:
                  'https://www.rbsdirect.com.br/filestore/3/4/6/6/2/5/3_86b6bc89f0041e6/3526643_9969bba9c0d50ec.jpg?w=1024&h=1024&a=c',
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatarPage(
              imagemURI:
                  'https://f.i.uol.com.br/fotografia/2018/07/26/15326200525b59ed14259ba_1532620052_1x1_md.jpg',
              nomeUsuario: 'Keliy Jenner',
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatarPage(
              imagemURI:
                  'https://sp-ao.shortpixel.ai/client/to_auto,q_glossy,ret_img,w_1920,h_1080/https://www.maisnovela.com.br/wp-content/uploads/2022/12/bianca-andrade-boca-rosa.jpg',
              nomeUsuario: 'Keliy Jenner',
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatarPage(
              imagemURI:
                  'https://i.pinimg.com/550x/22/84/d5/2284d555c0efc8fa4a0035605d7f2737.jpg',
              nomeUsuario: 'Keliy Jenner',
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatarPage(
              imagemURI:
                  'https://m.extra.globo.com/incoming/14419795-064-dec/w480h720-PROP/chay.jpg',
              nomeUsuario: 'Keliy Jenner',
            ),
          ],
        ),
      ],
    );
  }
}
