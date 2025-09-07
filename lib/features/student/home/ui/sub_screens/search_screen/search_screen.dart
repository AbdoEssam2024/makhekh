import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/colors/colors.dart';
import 'package:makhekh/const/images/images.dart';
import 'category_search_tab.dart';
import 'list_tile_category.dart';


class SearchScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  // var searchAnchorController = SearchController();
  final FocusNode? searchFocusNode;

  SearchScreen({super.key , this.searchFocusNode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            SearchAnchor(
              // searchController: searchAnchorController,
              viewHintText: 'Search'.tr,
              builder: (context, controller) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.047,
                  child: SearchBar(
                    controller: searchController,
                    leading: Image.asset(AppImages.searchIcon),
                    hintText: 'Search'.tr,
                    hintStyle: WidgetStatePropertyAll(TextStyle(
                        fontSize: 14,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w400)),
                    focusNode: searchFocusNode,
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.searchBarColor),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    shadowColor: WidgetStatePropertyAll(Colors.transparent),
                    onTap: () {
                      return controller.openView();
                    },
                    onSubmitted: (value) {
                      // when user press
                      // print('Search query: $value');
                    },
                  ),
                );
              },
              suggestionsBuilder: (context, controller) {
                // Implement your suggestions logic here
                final List<String> suggestions = [];
                if (controller.text.isNotEmpty) {
                  suggestions
                      .addAll(['${'Suggestion'.tr} 1', '${'Suggestion'.tr} 2', '${'Suggestion'.tr} 3']);
                }
                return suggestions.map((suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                    onTap: () {
                      // Handle suggestion selection here
                      // print('Selected suggestion: $suggestion');
                      searchController.text = suggestion;
                      controller.closeView(suggestion);
                    },
                  );
                }).toList();
              },
            ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          CategorySearchTab(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ListTileCategory(title: 'Development'.tr, onTapFunction: () {}),
          ListTileCategory(title: 'Finance & Accounting'.tr, onTapFunction: () {}),
          ListTileCategory(title: 'Design'.tr, onTapFunction: () {}),
          ListTileCategory(title: 'It & Software'.tr, onTapFunction: () {}),
          ListTileCategory(title: 'Offer Productivity'.tr, onTapFunction: () {}),
          ListTileCategory(title: 'Marketing'.tr, onTapFunction: () {}),
          ListTileCategory(title: 'Health & Fitness'.tr, onTapFunction: () {}),
        ],
        ),
    );
  }
}

//SizedBox(
//             height: MediaQuery.of(context).size.height*0.047,
//             child: TextField(
//
//               controller: searchController,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: MyTheme.searchBarColor,
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide:
//                   BorderSide(color: MyTheme.searchBarColor, width: 2.5),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide:
//                   BorderSide(color: MyTheme.searchBarColor, width: 2.5),
//                 ),
//                 hintText: 'Search',
//                 hintStyle: TextStyle(color: MyTheme.greyColor, fontSize: 14, fontWeight: FontWeight.w400),
//                 prefixIcon: Image.asset('assets/images/search_icon.png'),
//
//               ),
//             ),
//           ),