import 'package:flutter/material.dart';
import 'package:instagram_app/components/constants.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.black,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              "choquei",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            minLeadingWidth: 0.5,
            leading: CircleAvatar(
              maxRadius: 15,
              backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/1588303943523864578/GELv25OI_400x400.jpg",
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 360,
                width: 360,
                child: Image.asset(
                  "assets/images/news.jpeg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 18),
                    width: 38,
                    height: 38,
                    color: Colors.black,
                    child: Image.asset(
                      'assets/images/coracao.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 18),
                    width: 40,
                    height: 40,
                    color: Colors.black,
                    child: Image.asset(
                      'assets/images/comente.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    width: 35,
                    height: 35,
                    color: Colors.black,
                    child: Image.asset(
                      'assets/images/enviar.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 192,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    width: 35,
                    height: 35,
                    color: Colors.black,
                    child: Image.asset(
                      'assets/images/favourite.png',
                      fit: BoxFit.contain,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
