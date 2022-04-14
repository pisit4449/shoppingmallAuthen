import 'package:flutter/material.dart';
import 'package:shoppingmallauthen/states/authen.dart';
import 'package:shoppingmallauthen/states/buyer_service.dart';
import 'package:shoppingmallauthen/states/create_account.dart';
import 'package:shoppingmallauthen/states/rider_service.dart';
import 'package:shoppingmallauthen/states/seller_service.dart';
import 'package:shoppingmallauthen/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen':(BuildContext context)=>Authen(),
  '/createAccount':(BuildContext context) => CreateAccount(),
  '/buyerService':(BuildContext context) => BuyerService(),
  '/sellerService':(BuildContext context) => SellerService(),
  '/riderService':(BuildContext context) => RiderService(),
};

String? initialRoute;

void main() {
  initialRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}

