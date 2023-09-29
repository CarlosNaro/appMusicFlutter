import 'package:flutter/material.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});
  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0),
              ],
            )),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 16,),
                            Icon(Icons.settings),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        AlbumCard(label:"Best Mode", image: AssetImage("assets/album03.jpg"),),
                        SizedBox(width: 16),
                        AlbumCard(label:"Motivation Mix", image: AssetImage("assets/album04.jpeg"),),
                        SizedBox(width: 16),
                        AlbumCard(label:"Top 50-Global", image: AssetImage("assets/album05.jpeg"),),
                        SizedBox(width: 16),
                        AlbumCard(label:"Power Gaming", image: AssetImage("assets/album06.jpg"),),
                        SizedBox(width: 16),
                        AlbumCard(label:"Top songs - Global", image: AssetImage("assets/album07.jpg"),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: image,
        width: 120, height: 120,fit: BoxFit.cover,
        ),
        SizedBox(height: 10,),
        Text(label),
      ],
    );
  }
}
