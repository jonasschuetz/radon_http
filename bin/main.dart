import 'package:radon_http/radon_http.dart';

Future main() async {
  final app = Application<RadonHttpChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8008;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}

//This is for the commit
