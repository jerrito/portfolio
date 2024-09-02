import 'package:go_router/go_router.dart';
import 'package:portfolio/core/routes/route_names.dart';
import 'package:portfolio/features/about/presentation/pages/about.dart';
import 'package:portfolio/features/home/presentation/pages/home.dart';
import 'package:portfolio/features/projects/presentation/pages/projects.dart';
import 'package:portfolio/features/resume/presentation/pages/resume.dart';
import 'package:portfolio/features/skills/presentation/pages/skills.dart';

GoRouter routes() {
  return GoRouter(initialLocation: "/home", routes: [
    GoRoute(
      path: "/home",
      name: RouteNames.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/about",
      name: RouteNames.about,
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      path: "/skills",
      name: RouteNames.skills,
      builder: (context, state) => const SkillsPage(),
    ),
    GoRoute(
      path: "/projects",
      name: RouteNames.projects,
      builder: (context, state) => const ProjectsPage(),
    ),
    GoRoute(
      path: "/resume",
      name: RouteNames.resume,
      builder: (context, state) => const ResumePage(),
    )
  ]);
}
