import 'package:flutter/material.dart';
import 'package:nft_markletplace_ofc/ui/pages/home_page.dart';
import 'other/Config.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Config.APP_NAME",
      theme: ThemeData.light(),
      home: ChatsPage(),
    );
  }
}
