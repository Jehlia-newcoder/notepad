import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

AppBar notepadAppBar(BuildContext context, {required String title}) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        tooltip: 'Log out',
        icon: const Icon(Icons.logout),
        onPressed: () => Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.login,
          (_) => false,
        ),
      ),
    ],
  );
}
