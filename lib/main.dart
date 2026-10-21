import 'package:beekeeper_mobile/screens/auth/login.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(
    ShadcnApp(
      background: Color.fromARGB(255, 228, 253, 3),
      title: 'My App',
      home: LoginView(),
    ),
  );
}
