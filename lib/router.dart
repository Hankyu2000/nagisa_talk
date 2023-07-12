import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nagisatalk_mkii/pages/home_page.dart';

final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        pageBuilder: (context, state){
          return MaterialPage(child: HomePage());
        }
      )
    ]
);