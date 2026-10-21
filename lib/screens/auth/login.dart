import 'package:flutter/widgets.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' hide Column;

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(placeholder: Text('Email')),
        TextField(placeholder: Text('Password')),
        PrimaryButton(child: Text('Login')),
      ],
    );
  }
}
