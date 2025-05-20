import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi Ehi,',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    '1,234.00',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  Image.asset('assets/flags/gh.png', width: 24),
                  const SizedBox(width: 4),
                  const Text('GHS'),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Here are some things you can do',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Stub action cards for now
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.3,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  Placeholder(fallbackHeight: 80), // Pay
                  Placeholder(fallbackHeight: 80), // Request
                  Placeholder(fallbackHeight: 80), // Airtime
                  Placeholder(fallbackHeight: 80), // Bill
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
