import 'package:flutter/material.dart';
import 'package:food_app/components/my_current_location.dart';
import 'package:provider/provider.dart';

import '../components/my_description_box.dart';
import '../components/my_drawer.dart';
import '../components/my_sliver_app_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
    class _HomePageState extends State<HomePage> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            drawer: MyDrawer(),
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: Text('title'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      //my current location
                      const MyCurrentLocation(),
                      // description box
                      const MyDescriptionBox(),
                    ],

                  ),
                ),
              ],
              body: Container(color: Colors.blue),
            )
        );


      }
    }