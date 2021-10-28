import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:tech_shop_app/screens/drawer's_screens/notifications/states/controller.dart";
import 'components/app_bar.dart';
import 'components/noti_tile.dart';
import 'controllers/noti_controller.dart';

class NotificationView extends StatefulWidget {
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  final cubit = NotificationController()..getData();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => cubit,
        child: Scaffold(
                appBar: notificationAppBar(),
                backgroundColor: Color.fromARGB(250, 253, 231, 200),
                body: BlocBuilder(
                  bloc: cubit,
                  builder: (context, state) => state is NotificationLoading ? Center(child: CircularProgressIndicator(color: Colors.white,)): ListView.builder(
                    itemCount: cubit.notificationModel.data.data.length,
                    itemBuilder: (context, index) => NotificationTile(
                        body: cubit.notificationModel.data.currentPage,
                        title: cubit.notificationModel.data.data[index].title,
                        subtitle: cubit.notificationModel.data.data[index].message),
                  ),
                ),
              ));
  }
}
