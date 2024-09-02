import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/pages/wide_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth > 1200) {
            return const WideLayout();
          } else if (constraint.maxWidth > 600) {
            return Container();
          }

          return Container();
        },
      ),
    );
  }
}
