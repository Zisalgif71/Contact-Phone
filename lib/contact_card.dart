import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final String age;
  final String role;
  final String imagePath;
  final VoidCallback onTap;

  ContactCard({
    required this.name,
    required this.age,
    required this.role,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      age,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      role,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                'Detail >>>',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
