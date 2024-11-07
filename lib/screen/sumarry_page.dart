import 'package:flutter/material.dart';
import 'home_page.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ringkasan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Nama Siswa 1'),
            subtitle: Text('Informasi terkait Siswa 1'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Nama Siswa 2'),
            subtitle: Text('Informasi terkait Siswa 2'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Nama Siswa 3'),
            subtitle: Text('Informasi terkait Siswa 3'),
          ),
          // Tambahkan ListTile lagi sesuai kebutuhan
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: const Icon(Icons.home),
        tooltip: 'Kembali ke Home',
      ),
    );
  }
}
