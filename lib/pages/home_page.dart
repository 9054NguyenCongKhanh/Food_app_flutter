import 'package:flutter/material.dart';
import 'package:food_app/components/my_current_location.dart';
import 'package:food_app/components/my_food_tile.dart';
import 'package:food_app/components/my_tab_bar.dart';
import 'package:food_app/models/food.dart';
import 'package:provider/provider.dart';

import '../components/my_description_box.dart';
import '../components/my_drawer.dart';
import '../components/my_sliver_app_bar.dart';
import '../models/restaurant.dart';
import 'food_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
    class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
      //tab controller
      late TabController _tabController;
      @override
      void initState() {
        super.initState();
        _tabController =
                        TabController(length: FoodCategory.values.length, vsync: this);
      }
      @override
      void dispose() {
        _tabController.dispose();
        super.dispose();
      }
      //sap xep va tra ve danh sach cac mat hang thuoc category cu the
      List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
        return fullMenu.where((food) => food.category == category).toList();
      }
      //tra ve danh sach category trong cua hang

      List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
        return FoodCategory.values.map((category) {
          List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

          return ListView.builder(
            itemCount: categoryMenu.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final food = categoryMenu[index];
              //tra ve UI food
              return FoodTile(
                food: food,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodPage(food: food),
                  ),
                ),
              );
            },
          );
        }).toList();
      }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            drawer: MyDrawer(),
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: _tabController),
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
              body: Consumer<Restaurant>(
                builder: (context, restaurant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu),
                ),
              ),
            )
        );


      }
    }