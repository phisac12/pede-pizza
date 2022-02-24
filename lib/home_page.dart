import 'package:flutter/material.dart';
import 'package:pizza_facil/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Menu de navegação',
                    style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.secondary),
                  ),
                ),
            ),
             ),
            ListTile(
              leading: Image.asset('assets/icons/facebook_icon.png', width: 26, height: 26,),
              title: Text(
                'Nosso Facebook',
              style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: Image.asset('assets/icons/instagram_icon.jpg', width: 26, height: 26,),
              title: Text(
                  'Nosso Instagram',
                style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: Image.asset('assets/icons/whatsapp_icon.png', width: 27, height: 27,),
              title: Text(
                'Nosso Whatsapp',
                style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: Image.asset('assets/icons/youtube.png', width: 26, height: 26,),
              title: Text(
                  'Nosso canal no YouTube',
                style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/logo.png',
          width: 55,
          height: 55,
          fit: BoxFit.cover,
        ),
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: SizedBox(
        child: Image.asset('assets/images/center.jpg',
        fit: BoxFit.fitWidth,
        ),
      ),
    );
}
}
