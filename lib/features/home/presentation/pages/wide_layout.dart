import 'package:flutter/material.dart';
import 'package:portfolio/core/button.dart';
import 'package:portfolio/core/size.dart';
import 'package:portfolio/features/home/presentation/widgets/title.dart';

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RichText(
          text: const TextSpan(text: "Portfolio", children: [
            TextSpan(text: "."),
          ]),
        ),
        centerTitle: true,
        title: const Titles(
          isHovered: false,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: Sizes.width(
                context,
                0.04,
              ),
            ),
            child: Button(
              label: "Hire me!",
              onTap: () => print("dd"),
            ),
          )
        ],
      ),
    );
  }
}
