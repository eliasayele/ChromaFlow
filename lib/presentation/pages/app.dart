import 'package:chroma_flow/presentation/pages/chroma_page.dart';
import 'package:flutter/material.dart';

/// The root of the ChromaFlow  application.
///
/// The [App] widget serves as the entry point for the Chroma Flow app. It
/// initializes the MaterialApp and sets up the home screen with the[ChromaPage]
/// as the initial page.
class App extends StatelessWidget {
  /// Creates the [App] widget.
  ///
  /// The [key] parameter is optional and allows providing a specific key
  /// for the widget.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chroma Flow',
      debugShowCheckedModeBanner: false,
      home: ChromaPage(),
    );
  }
}
