import 'package:basic_exam_4_halaman/screen/sumarry_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController infoController = TextEditingController();

  void _showSuccessMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Berhasil'),
        content: Text('Masbro Sukses Di Data'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Mantap'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambahkan Masbro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama Masbro'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Keterangan Masbro'),
            ),
            TextField(
              controller: infoController,
              decoration: InputDecoration(labelText: 'Ingfokan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSuccessMessage(context);
              },
              child: Text('Simpan'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SummaryPage()),
                );
              },
              child: Text('Almanac Masbro'),
            ),
          ],
        ),
      ),
    );
  }
}
