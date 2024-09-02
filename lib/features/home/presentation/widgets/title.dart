import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/routes/route_names.dart';
import 'package:portfolio/core/size.dart';

class Titles extends StatefulWidget {
  final bool isHovered;
  const Titles({super.key, required this.isHovered});

  @override
  State<Titles> createState() => _TitlesState();
}

class _TitlesState extends State<Titles> {
  bool isHover = false;
  @override
  void initState() {
    // isHover = widget.isHovered;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: TitleData.values
            .map((e) => Padding(
                  padding: EdgeInsets.only(
                    right: Sizes.width(
                      context,
                      0.02,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => context.goNamed(e.label),
                    child: MouseRegion(
                      onExit: (event) => setState(() {
                        isHover = false;
                      }),
                      onHover: (event) {
                        isHover = true;
                        setState(() {});
                      },
                      child: Tooltip(
                        message: "Go to ${e.label}",
                        child: Text(
                          e.label,
                          style: TextStyle(
                            fontSize: 13,
                            decoration: !isHover
                                ? TextDecoration.none
                                : TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
            .toList());
  }
}

enum TitleData {
  about(
    label: RouteNames.about,
  ),
  skills(
    label: RouteNames.skills,
  ),
  projects(
    label: RouteNames.projects,
  ),
  resume(
    label: RouteNames.resume,
  );

  final String label;
  final bool? isHovered;
  const TitleData({required this.label, this.isHovered = false});
}
