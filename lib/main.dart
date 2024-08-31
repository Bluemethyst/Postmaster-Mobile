import 'package:flutter/material.dart';
import 'sidebar_page.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const PostmasterApp());
}

class PostmasterApp extends StatelessWidget {
  const PostmasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Poppins", "Chakra Petch");
    PostmasterMaterialTheme theme = PostmasterMaterialTheme(textTheme);

    return MaterialApp(
      title: 'Postmaster',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const SidebarPage(),
    );
  }
}
