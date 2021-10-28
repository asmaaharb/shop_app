import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/search/states/controller.dart';
import 'components/result_list.dart';
import 'components/search_text_field.dart';
import 'controller/controller.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final controller = SearchController();

    return BlocProvider(
      create: (context) => controller,

      child: Scaffold(
   backgroundColor: Colors.white,
        body: Column(
          children: [
            SearchTextField(),
            controller.searchModel == null || controller.searchModel.data.data.isEmpty
                ? Center(child: Text('No Result'))
                :  Padding(
              padding: const EdgeInsets.all(20),
              child: BlocBuilder(
                  bloc: controller,
                  builder: (context, state) => state is SearchLoading
                      ? CircularProgressIndicator(): ResultList()),
            ),
          ],
        ),
      ),
    );
  }
}