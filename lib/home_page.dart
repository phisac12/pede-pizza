import 'package:flutter/material.dart';
import 'package:pizza_facil/cards_action.dart';
import 'package:pizza_facil/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list_tiles.dart';
import 'package:animated_card/animated_card.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void launchWhats() async {
    var urlWhats =
        "https://api.whatsapp.com/send?l=pt_br&phone=+5511949660992&text=olatodos";

    if (await canLaunch(urlWhats)) {
      await launch(urlWhats);
    } else {
      throw 'Não consegui abrir o Whatsapp';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.bottom,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 80,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                  ),
                  child: Center(
                    child: Text(
                      'Nossas redes sociais',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondary),
                    ),
                  ),
                ),
              ),
              ListCards('assets/icons/facebook_icon.png', 'Nosso Faceobok'),
              ListCards('assets/icons/instagram_icon.png', 'Nosso Instagram'),
              ListCards('assets/icons/whatsapp_icon.png', 'Nosso Whatsapp'),
              ListCards('assets/icons/youtube.png', 'Nosso YouTube'),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                launchWhats();
              },
              icon: Image.asset('assets/icons/whatsapp_icon.png',
                  width: 23, height: 23),
            )
          ],
          title: Image.asset(
            'assets/images/logo.png',
            width: 55,
            height: 55,
            fit: BoxFit.cover,
          ),
          backgroundColor: AppColors.primary,
          elevation: 0,
          toolbarHeight: 65,
        ),
        body: Column(
          children: [
            Stack(alignment: const AlignmentDirectional(-0.9, 1), children: [
              SizedBox(
                child: Image.asset(
                  'assets/images/center.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ]),
            Column(
              children: [
                CardsAction(
                  'Delivery',
                  'Faça seu pedido direto do Aplicativo',
                  const Color.fromARGB(179, 255, 233, 233),
                  'assets/icons/delivery.png',
                  Colors.black,
                  Colors.black,
                  'assets/images/delivery.png',
                ),
                CardsAction(
                    'Fidelidade',
                    'Compre 5 pizzas e ganhe',
                    AppColors.secondary,
                    'assets/icons/fidelity.png',
                    const Color.fromARGB(255, 155, 43, 35),
                    const Color.fromARGB(255, 155, 43, 35),
                    'assets/images/fidelity.jpg'),
                CardsAction(
                    'Cardápio',
                    'Pizza, porções e bebidas',
                    const Color.fromARGB(255, 78, 52, 42),
                    'assets/icons/menu.png',
                    Colors.white,
                    Colors.white,
                    'assets/images/menu.png'),
                CardsAction(
                    'Avalie-nos',
                    'Avalie nosso aplicativo',
                    const Color.fromARGB(255, 131, 40, 33),
                    'assets/icons/hateus.png',
                    Colors.white,
                    Colors.white,
                    'assets/images/rate-us.jpg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
