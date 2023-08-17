import 'dart:math';

import 'package:flutter/material.dart';

/// The ChromaPage display a vibrant and dynamic color exploration screen.
///
/// Users can interact with the ChromaPage to experience smooth color
/// transitions and discover motivational quotes that spark creativity. The
/// ChromaPage provides an engaging and visually appealing experience for users
/// seeking inspiration through colors and animations.
class ChromaPage extends StatefulWidget {
  /// Creates a ChromaPage widget.
  ///
  /// The [key] parameter is optional and allows providing a specific key
  /// for the widget.
  const ChromaPage({super.key});

  @override
  State<ChromaPage> createState() => _ChromaPageState();
}

class _ChromaPageState extends State<ChromaPage> {
  Color _backgroundColor = Colors.white;
  final int _colorValue = 256;
  String _currentQuote = "Tap the button for a creative quote!";

  final List<String> _quotes = [
    "Creativity is intelligence having fun. - Albert Einstein",
    "Technology is best when it brings people together. - Matt Mullenweg",
    "The best way to predict the future is to create it. - Peter Drucker",
    "Imagination is more important than knowledge. - Albert Einstein",
    "The only way to do great work is to love what you do. - Steve Jobs",
  ];

  void _changeBackgroundColor() {
    setState(() {
      final random = Random();
      _backgroundColor = Color.fromRGBO(
        random.nextInt(_colorValue),
        random.nextInt(_colorValue),
        random.nextInt(_colorValue),
        1,
      );
      _generateRandomQuote();
    });
  }

  void _generateRandomQuote() {
    setState(() {
      _currentQuote = _quotes[Random().nextInt(_quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: AnimatedContainer(
          color: _backgroundColor,
          duration: const Duration(
            milliseconds: 1000,
          ),
          curve: Curves.fastOutSlowIn,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello there",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _currentQuote,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
