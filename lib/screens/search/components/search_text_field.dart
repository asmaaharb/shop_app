import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/search/controller/controller.dart';
class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SearchController.of(context);
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: TextFormField(
        onFieldSubmitted: (value) {
          controller.search();
        },
controller: controller.searchController,
        cursorColor: Color.fromARGB(250,255, 116, 102),
        decoration: InputDecoration(
          focusedBorder:

        UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(250, 255, 116, 102))),

            prefixIcon: Icon(
                Icons.search,
                color: Color.fromARGB(250,255, 116, 102)
            ),
          hintText: "Search here!",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)),

   ),
      ),
    );
  }
}
