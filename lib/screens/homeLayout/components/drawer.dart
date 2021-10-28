import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import "package:tech_shop_app/screens/drawer's_screens/aboutUs/view.dart";
import "package:tech_shop_app/screens/drawer's_screens/feedBack/view.dart";
import "package:tech_shop_app/screens/drawer's_screens/notifications/view.dart";
import "package:tech_shop_app/screens/drawer's_screens/profile/view.dart";
import "package:tech_shop_app/screens/drawer's_screens/questions/view.dart";
import "package:tech_shop_app/screens/drawer's_screens/settings/view.dart";
import "package:tech_shop_app/screens/drawer's_screens/termsConditions/view.dart";

class DrawerE extends StatelessWidget {
  const DrawerE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: sizeFromHeight(4,context),
            child: Text(
              '7.TECH',
              style: TextStyle(color: Color.fromARGB(250, 255, 116, 102), fontSize: 35,fontFamily:  'DancingScript'),
            ),
            decoration: BoxDecoration(

                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/On5.png'),)),
          ),
          ListTile(
            leading: Icon(Icons.person_outline_outlined,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text('Profile',
            ),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileView()))},
          ),
          ListTile(
            leading: Icon(Icons.notifications_none,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text('Notification',
            ),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationView()))},
          ),
          ListTile(
            leading: Icon(Icons.warning_amber_outlined,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text(' Terms & Conditions '),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsView()))},
          ),   ListTile(
            leading: Icon(Icons.paste,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text(' About Us '),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsView()))},
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text('Settings'),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsView()))},
          ),
          ListTile(
            leading: Icon(Icons.border_color,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text('Feedback'),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedBackView()))},
          ),
          ListTile(
            leading: Icon(Icons.question_answer_outlined,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text('Questions'),
            onTap: () => {   Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionsView()))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Color.fromARGB(250, 255, 116, 102),),
            title: Text('Logout'),
            onTap: () => logout(),
          ),
        ],
      ),
    );
  }
}
void logout() async {
   final prefs = await SharedPreferences.getInstance();
   prefs.remove('token');


}