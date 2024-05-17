import 'package:feature_auth/l10n/generated/auth_localizations.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AuthLocalizations.of(context).auth_translation);
  }
}
