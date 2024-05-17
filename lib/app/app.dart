import 'package:feature_auth/l10n/generated/auth_localizations.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/app/views/screens/todo_screen/todo_screen.dart';
import 'package:to_do_app/l10n/generated/common_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => CommonLocalizations.of(context).title,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      localizationsDelegates: const [
        CommonLocalizations.delegate,
        AuthLocalizations.delegate,
      ],
      supportedLocales: CommonLocalizations.supportedLocales,
      home: TodoScreen(),
    );
  }
}
