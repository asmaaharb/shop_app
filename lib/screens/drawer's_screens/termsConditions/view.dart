import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'components/app_bar.dart';

class TermsView extends StatefulWidget {
  @override
  _TermsViewState createState() => _TermsViewState();
}

class _TermsViewState extends State<TermsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:termsAppBar(),
      backgroundColor: Color.fromARGB(250,253, 231, 200),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: sizeFromWidth(1.1, context),

                child: Text(
                  "Scope. Welcome to 7.TECH.com. If you are located in the United States, theses Terms & Conditions ( “Agreement” or “Terms” ) are a contract between you and Roadget Business Pte. Ltd, as operator of the Site and App (as defined below), and SHEIN Distribution Corporation (the “Company” ), as the company that uses the Site and App to sell products to you, collect payment and process your returns (where applicable, “SHEIN,” “we,” “us,” and “our” shall refer to Roadget Business Pte. Ltd. and/or SHEIN Distribution Corporation and “you” or “your” shall refer to the user of the Services (as defined below). These Terms govern your use of our website at SHEIN.com (the “Site,” which includes local versions of the Site, such as us.shein.com), any mobile applications ( “Apps” ) that hyperlink to this Agreement, any other written, electronic, and oral communications with SHEIN and its affiliated entities, or any websites, pages, features, or content owned and operated by us that hyperlink to this Agreement (collectively, including the Site and Apps, the “Services” ). ",textAlign: TextAlign.start,)),
          )
        ],
      ),
    );
  }
}
