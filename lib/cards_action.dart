import 'package:flutter/material.dart';
import 'package:pizza_facil/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_card/animated_card.dart';

@immutable
class CardsAction extends StatelessWidget {
  String title;
  String subtitle;
  Color cores;
  String img;
  Color colorTitle;
  Color colorSubtitle;
  String imgCard;

  CardsAction(this.title, this.subtitle, this.cores, this.img, this.colorTitle,
      this.colorSubtitle, this.imgCard,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.bottom,
      child: Center(
        child: Card(
          margin: const EdgeInsets.only(top: 8),
          color: cores,
          child: InkWell(
            splashColor: AppColors.primary,
            onTap: () {
              _gotoDetailsPage(context, title, imgCard);
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 129, 2, 6), width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(4))),
              width: 380,
              height: 105,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(width: 70, child: Image.asset(img)),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.bebasNeue(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: colorTitle),
                      ),
                      Container(
                          width: 230,
                          child: Text(
                            subtitle,
                            style: GoogleFonts.bebasNeue(
                                fontSize: 17, color: colorSubtitle),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _heroTeste extends StatelessWidget {
  String title;
  String imgCard;
  _heroTeste(Size size, this.title, this.imgCard, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction:AnimatedCardDirection.right,
      child: Column(children: [
        Image.asset(imgCard,
          fit: BoxFit.fitWidth,
          height:350,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
              style: GoogleFonts.righteous(
                fontSize: 33,
              )),
        ),
        Container(
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 12),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Contratar Serviço',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 0, 158, 0),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255)),
            )),
      ]),
    );
  }
}

void _gotoDetailsPage(BuildContext context, title, imgCard) {
  Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (BuildContext context) => Scaffold(
      appBar: AppBar(
          title: Text(title), backgroundColor: AppColors.primary),
      body: Column(
        children: <Widget>[
          Padding(
            padding:const EdgeInsets.only(top: 10),
            child: Hero(
              tag: 'hero-rectangle',
              child: _heroTeste(const Size(200, 200), title, imgCard),
            ),
          ),
        ],
      ),
    ),
  ));
}
