import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyba_flutter_test/providers/universities_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final universitiesProvider = Provider.of<UniversitiesProvider>(context);

    final universitiesList = universitiesProvider.onDisplayUniversities;

    if (universitiesList.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text('Loading...'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tyba Universities'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Card(
            child: Text(universitiesList[0]["name"]),
          ),
        ],
      ),
    );
  }
}
