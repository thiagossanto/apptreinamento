import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GitHub extends StatefulWidget {
  const GitHub({Key? key}) : super(key: key);

  @override
  State<GitHub> createState() => _GitHubState();
}

class _GitHubState extends State<GitHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GitHub Page'), centerTitle: true),
      );
  }
}
