import 'package:flutter/material.dart';
import 'package:navegacao_flutter/tela2.dart';

class primeiraTela extends StatelessWidget {
  const primeiraTela({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Tela'),
        bottom: TabBar(
          // Adding TabBar to AppBar
          tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
          ],
        ),
      ),
      drawer: Drawer(
        // Adding Drawer to Scaffold
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Titulo do drawer'),
            ),
            ListTile(
              title: Text('Iten 1'),
              onTap: () {
                // Add functionality here
              },
            ),
            ListTile(
              title: Text('Iten 2'),
              onTap: () {
                // Add functionality here
              },
            ),
          ],
        ),
      ),
      body: TabBarView(
        // Adding TabBarView to display tab contents
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Segunda tela'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const segundaTela()),
                );
              },
            ),
          ),
          Center(
              child: Text('Content of Tab 2')), // Placeholder content for Tab 2
        ],
      ),
    );
  }
}
