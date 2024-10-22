import 'package:flutter/material.dart';

class Discussion extends StatelessWidget {
  const Discussion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('MENU')),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Compte"),
              subtitle: Text("géré votre compte"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.settings_rounded),
              title: Text("parametre"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 12,
        title: const Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: ListView(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
