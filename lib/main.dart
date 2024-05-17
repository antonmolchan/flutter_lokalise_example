import 'package:flutter/material.dart';
import 'package:lokalise_flutter_sdk/lokalise_flutter_sdk.dart';
import 'package:to_do_app/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Lokalise.init(
    projectId: '4794011166446b043dc5b0.90205638',
    sdkToken: '1dd8c78b554ada1264b28a9f15de7b44bd7a',
    appVersion: '1.0.0',
  );
  runApp(const App());
}
