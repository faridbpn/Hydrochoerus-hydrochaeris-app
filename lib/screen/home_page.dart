import 'package:basic_exam_4_halaman/screen/sumarry_page.dart';
import 'package:flutter/material.dart';
import 'form_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          ),
          backgroundColor: const Color.fromARGB(255, 203, 135, 111),
          centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selamat datang di Aplikasi Saya!, Silahkan coba Tambahkan data masbro yang anda miliki',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              child: const Text('Halaman Formulir'),              
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SummaryPage()),
                );
              },
              child: const Text('Halaman Ringkasan'),
            ),
          ],
        ),
      ),
    );
  }
}
