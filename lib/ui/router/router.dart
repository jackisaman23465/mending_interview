import 'package:go_router/go_router.dart';
import 'package:mending_interview/ui/router/anim/slide_transition_page.dart';

import '../../models/dataModel.dart';
import '../pages/launch_detail_page.dart';
import '../pages/launch_main_page.dart';
import 'anim/fade_transition_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return FadeTransitionPage(
          child: const LaunchMainPage(),
        );
      },
    ),
    GoRoute(
      path: '/details',
      pageBuilder: (context, state) {
        final data = state.extra as DataModel;
        return SlideTransitionPage(
          direction: SlideDirection.rtl,
          child: LaunchDetailPage(data: data),
        );
      },
    ),
  ],
);