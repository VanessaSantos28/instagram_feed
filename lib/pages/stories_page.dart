import 'package:flutter/material.dart';
import 'package:instagram_app/class_pages/circle_avatar.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
        ),
        Row(
          children: [
            LiveAvatar(
              aovivoLogo:
                  'https://www.rbsdirect.com.br/filestore/3/4/6/6/2/5/3_86b6bc89f0041e6/3526643_9969bba9c0d50ec.jpg?w=1024&h=1024&a=c',
            ),
            CircleAvatarPage(
              imagemURI:
                  'https://f.i.uol.com.br/fotografia/2018/07/26/15326200525b59ed14259ba_1532620052_1x1_md.jpg',
              nomeUsuario: 'Keliy Jenner',
            ),
            CircleAvatarPage(
              imagemURI:
                  'https://sp-ao.shortpixel.ai/client/to_auto,q_glossy,ret_img,w_1920,h_1080/https://www.maisnovela.com.br/wp-content/uploads/2022/12/bianca-andrade-boca-rosa.jpg',
              nomeUsuario: 'Keliy Jenner',
            ),
          ],
        ),
      ],
    );
  }
}
