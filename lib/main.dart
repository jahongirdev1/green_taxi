import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/common/widget/my_app.dart';
import 'src/feature/auth/controller/auth_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthController()),
      ],
      child: const MyApp(),
    ),
  );
}
