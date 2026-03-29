import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              child: Icon(
                Icons.storefront,
                size: 100,
                color: Colors.yellow.shade700,
              ),
            ),
            const SizedBox(height: 20),

            
            Text(
              'Welcome to EASY TECH!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.yellow.shade700,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'EASY TECH is your one-stop online store for the latest gadgets, hardware, and accessories. We aim to provide high-quality products at competitive prices with excellent customer service.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 25),

          
            _buildSection(
              icon: Icons.flag,
              title: 'Our Mission',
              description: 'To make technology accessible to everyone and simplify your shopping experience with fast, reliable service.',
            ),
            const SizedBox(height: 20),

           
            _buildSection(
              icon: Icons.visibility,
              title: 'Our Vision',
              description: 'To become the most trusted and innovative online tech store in the region, bringing customers the best products and deals.',
            ),
            const SizedBox(height: 20),

            
            _buildSection(
              icon: Icons.miscellaneous_services,
              title: 'Our Services',
              description: '• Wide range of electronics and gadgets\n• Easy online ordering and secure payments\n• Fast delivery and excellent customer support',
            ),
            const SizedBox(height: 20),

            
            _buildSection(
              icon: Icons.contact_mail,
              title: 'Contact Us',
              description: 'Email: support@easytech.com\nPhone: +94 123 456 789\nAddress: 123 Tech Street, Colombo, Sri Lanka',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required IconData icon, required String title, required String description}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 30, color: Colors.yellow.shade700),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}