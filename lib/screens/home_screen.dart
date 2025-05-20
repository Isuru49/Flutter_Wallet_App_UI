import 'package:flutter/material.dart';
import '../widgets/action_card.dart';
import '../widgets/favorite_user_avatar.dart';
import '../widgets/bottom_nav_bar.dart';


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
                children: [
                  const ActionCard(
                    icon: Icons.send,
                    title: 'Pay someone',
                    subtitle: 'To wallet, bank or mobile number',
                  ),
                  const ActionCard(
                    icon: Icons.request_page,
                    title: 'Request money',
                    subtitle: 'Request money from OroboPay users',
                  ),
                  const ActionCard(
                    icon: Icons.phone_android,
                    title: 'Buy airtime',
                    subtitle: 'Top-up or send airtime across Africa',
                  ),
                  const ActionCard(
                    icon: Icons.receipt_long,
                    title: 'Pay bill',
                    subtitle: 'Zero transaction fees when you pay',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Your favorites people',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FavoriteUserAvatar(label: 'Add', isAdd: true),
                    FavoriteUserAvatar(
                      label: 'Grace L.',
                      imagePath: 'assets/images/user1.png',
                    ),
                    FavoriteUserAvatar(
                      label: 'Lawrence A.',
                      imagePath: 'assets/images/user2.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
