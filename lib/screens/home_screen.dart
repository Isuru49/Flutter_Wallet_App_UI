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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi Ehi,',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            '1,234.00',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Image.asset('assets/flages/gh.png', width: 24),
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
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.3,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          ActionCard(
                            icon: Icons.send,
                            title: 'Pay someone',
                            subtitle: 'To wallet, bank or mobile number',
                          ),
                          ActionCard(
                            icon: Icons.request_page,
                            title: 'Request money',
                            subtitle: 'Request money from OroboPay users',
                          ),
                          ActionCard(
                            icon: Icons.phone_android,
                            title: 'Buy airtime',
                            subtitle: 'Top-up or send airtime across Africa',
                          ),
                          ActionCard(
                            icon: Icons.receipt_long,
                            title: 'Pay bill',
                            subtitle: 'Zero transaction fees when you pay',
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Divider(thickness: 1),
                      const SizedBox(height: 12),
                      const Text(
                        'Your favorites people',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              // Increased width for "Add" button
                              width: 80, // Adjust as needed
                              child: const FavoriteUserAvatar(
                                label: 'Add',
                                isAdd: true,
                              ),
                            ),
                            SizedBox(
                              // Increased width for "Grace L."
                              width: 80, // Adjust as needed
                              child: const FavoriteUserAvatar(
                                label: 'Grace L.',
                                imagePath: 'assets/images/user1.png',
                              ),
                            ),
                            SizedBox(
                              // Increased width for "Lawrence A."
                              width: 80, // Adjust as needed
                              child: const FavoriteUserAvatar(
                                label: 'Lawrence A.',
                                imagePath: 'assets/images/user2.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
