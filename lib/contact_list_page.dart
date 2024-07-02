import 'package:flutter/material.dart';
import 'contact_card.dart';
import 'contact_detail_page.dart';

class ContactListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.all(8),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ContactCard(
              name: 'Randi Nur Rizki',
              age: '49 years old',
              role: 'Senior Software Engineer',
              imagePath: 'assets/images/randi.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactDetailPage(
                      name: 'Randi Nur Rizki',
                      age: '49 years old',
                      address: 'Salabenda, Bogor',
                      email: 'randirizki98@gmail.com',
                      imagePath: 'assets/images/randi.jpg',
                      about: 'Saya seorang pengembang perangkat lunak senior dengan pengalaman lebih dari 20 tahun di industri ini.',
                    ),
                  ),
                );
              },
            ),
            ContactCard(
              name: 'Muhammad Farid',
              age: '24 years old',
              role: 'UI/UX Designer',
              imagePath: 'assets/images/padlan.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactDetailPage(
                      name: 'Muhammad Farid',
                      age: '24 years old',
                      address: 'Jakarta',
                      email: 'farid@example.com',
                      imagePath: 'assets/images/padlan.jpg',
                      about: 'Saya seorang desainer UI/UX yang berbakat dan berdedikasi.',
                    ),
                  ),
                );
              },
            ),
            ContactCard(
              name: 'Rais Agung Subakti',
              age: '54 years old',
              role: 'CTO',
              imagePath: 'assets/images/rais.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactDetailPage(
                      name: 'Rais Agung Subakti',
                      age: '54 years old',
                      address: 'Bandung',
                      email: 'rais@example.com',
                      imagePath: 'assets/images/rais.png',
                      about: 'Saya adalah CTO dengan pengalaman luas dalam teknologi dan manajemen.',
                    ),
                  ),
                );
              },
            ),
            ContactCard(
              name: 'Abdul Azis Al-Gifari',
              age: '30 years old',
              role: 'Fullstack Web Developer',
              imagePath: 'assets/images/azis.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactDetailPage(
                      name: 'Abdul Azis Al-Gifari',
                      age: '30 years old',
                      address: 'Surabaya',
                      email: 'azis@example.com',
                      imagePath: 'assets/images/azis.jpg',
                      about: 'Saya seorang pengembang web fullstack yang berpengalaman dalam membangun aplikasi web modern.',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi yang diinginkan
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
