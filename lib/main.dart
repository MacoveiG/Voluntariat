import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voluntar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.greenAccent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Cutare',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Chaturi',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profilul',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 35.0),
              ),

              // Card(
              //   child: Row(
              //     children: [
              //       Image(image: AssetImage('assets/images/lake.jpg')),
              //       ListTile(
              //         title: Text(
              //             'Winterization! Studiu privind pregătirea locuințelor pentru sezonul rece'),
              //         subtitle: Text(
              //             'Participă la desfășurarea unui studiu privind pregătirea locuințelor pentru sezonul rece.'),
              //       ),
              //     ],
              //   ),
              // ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Anunturi relevante',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),

              Card(
                child: ListTile(
                  leading: Icon(Icons.crisis_alert_rounded),
                  title: Text(
                      'Winterization! Studiu privind pregătirea locuințelor pentru sezonul rece'),
                  subtitle: Text(
                      'Participă la desfășurarea unui studiu privind pregătirea locuințelor pentru sezonul rece.'),
                ),
              ),

              // Card(
              //   elevation: 10,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.orangeAccent,
              //       image: DecorationImage(
              //         image: AssetImage("lib/images/1.jpg"),
              //         // fit: BoxFit.fitWidth,
              //         alignment: Alignment.centerLeft,
              //       ),
              //     ),
              //     child: Text("asddfghjykulikujhytgrfd",
              //         style: TextStyle(
              //             color: Colors.red,
              //             fontSize: 16,
              //             fontFamily: 'LangerReguler')),
              //     alignment: Alignment.center,
              //   ),
              // ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.crisis_alert_rounded),
                  title: Text('Ziua refugiaților în parcul Alunelul'),
                  subtitle: Text(
                      'Implică-te în organizarea evenimentului dedicat Zilei Refugiaților, organizat de către UNHCR Moldova în Parcul Alunelul.'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.crisis_alert_rounded),
                  title: Text('Iarmarocul Protecției Temporare'),
                  subtitle: Text(
                      'Căutăm voluntari care doresc să se implice în desfășurarea evenimentului.'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.crisis_alert_rounded),
                  title: Text(
                      'Ajută-ne să pregătim daruri pentru copiii ucraineni!'),
                  subtitle: Text(
                      'Căutăm voluntari și voluntare pentru a verifica și ambala darurile primite pentru copiii ucraineni de la War Childhood Museum în Bosnia.'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.crisis_alert_rounded),
                  title: Text('Campania de Paști - Masa Bucuriei'),
                  subtitle: Text(
                      'Colectăm produse alimentare pentru persoanele nevoiașe în 40 magazine din capitală.'),
                ),
              ),
            ],
          ),
        ),

        /// Search page
        Card(
          shadowColor: Colors.transparent,
          child: SizedBox.expand(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Cautare',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cautare...',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Adauga filtre'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Text(
                  'Recent cautat:',
                  style: theme.textTheme.titleMedium,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Clacă la depozit'),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Tabără'),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Iarmaroc'),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Mosaicul cultural'),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Refugiații'),
                  ),
                ),
              ],
            ),
          ),
        ),

        /// Chat page
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 35.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Chaturi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Badge(
                    label: Text('*'),
                    child: Icon(Icons.person),
                  ),
                  title: Text('Silviu Timotei'),
                  subtitle: Text('Buna ziua'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Badge(
                    label: Text('*'),
                    child: Icon(Icons.person),
                  ),
                  title: Text('Emilia Ovidiu'),
                  subtitle: Text('Ce adresa?'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Ovidiu Iancu'),
                  subtitle: Text('Da, desigur'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Ionut Stan'),
                  subtitle: Text('Ce numar are Oleg? Nu il gasesc'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Victoria Călin'),
                  subtitle: Text('Peste 3 zile'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Gabriel Gheorghiu'),
                  subtitle: Text('Ok, astept pozele'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Lucian Iancu'),
                  subtitle: Text('Eu voi ajunge in o ora la el'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Andreea Călin'),
                  subtitle: Text('Comanda tocmai a ajuns'),
                ),
              ),
            ],
          ),
        ),

        /// Settings page
        Card(
          shadowColor: Colors.transparent,
          child: SizedBox.expand(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '                     Setari',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Profilul meu',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Modificarea profilului',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Profilul meu',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Arhiva notificari',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Anunturile salvate',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Modul intunecat',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Setarile aplicatiei',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Iesire',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}
