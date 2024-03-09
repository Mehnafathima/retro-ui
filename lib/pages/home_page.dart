import 'package:flutter/material.dart';
import 'package:retro_ui_flutter/util/category_tile.dart';
// import 'package:retro_ui_flutter/widgets/category_box_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  // list of donuts
  List categories = [
    ["Coding", "lib/images/program.png"],
    ["Design", "lib/images/program.png"],
    ["Marketing", "lib/images/program.png"],
    ["Accounting", "lib/images/program.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Text(
            'Discovers',
            style: TextStyle(
                // fontFamily: 'YourFontFamily', // Specify the desired font family
                fontWeight: FontWeight.w900,
                fontSize: 28.0),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
              },
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search bar
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),

          //categories
          const SizedBox(height: 25.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                // Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    // fontSize: 16.0, // Set font size if needed
                  ),
                ),
              ],
            ),
          ),
          //popular class
          //also learning about warp can do with gridview
          Padding(
            padding: const EdgeInsets.all(
                8.0), 
            child: Wrap(
              spacing: 2.0, 
              runSpacing:
                  0.0, 
                     children: List.generate(categories.length, (index) {
                return Container(
                  width: (MediaQuery.of(context).size.width - 18.0) /
                      2, 
                       child: Padding(
                    padding: EdgeInsets.all(
                        2.0), 
                         child: CategoryTile(
                      categoryName: categories[index][0],
                      categoryIcon: categories[index][1],
                    ),
                  ),
                );
              }),
            ),
          ),
          //popular classes
          const SizedBox(height: 25.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Classes",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                // Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    // fontSize: 16.0, // Set font size if needed
                  ),
                ),
              ],
            ),
          ),
        ],

        //popular class tile row

      ),
    );
  }
}
