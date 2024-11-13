import 'package:flutter/material.dart';

void main() => runApp(GPayApp());

class GPayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("Google Pay"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Balance Overview
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Balance: \500.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Quick Actions Grid
                Text(
                  "Quick Actions",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    QuickAction(icon: Icons.send, label: "Send"),
                    QuickAction(icon: Icons.qr_code, label: "Pay"),
                    QuickAction(icon: Icons.request_page, label: "Request"),
                    QuickAction(icon: Icons.card_giftcard, label: "Rewards"),
                  ],
                ),
                SizedBox(height: 20),

                // Recent Activity Section
                Text(
                  "Recent Activity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    ActivityItem(title: "Transaction 1", subtitle: "\$25.00"),
                    ActivityItem(title: "Transaction 2", subtitle: "\$50.00"),
                    ActivityItem(title: "Transaction 3", subtitle: "\$10.00"),
                  ],
                ),
                SizedBox(height: 20),

                // Promotions Section
                Text(
                  "Promotions & Offers",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    PromotionItem(title: "Offer 1: 10% Cashback"),
                    PromotionItem(title: "Offer 2: \$5 off on next purchase"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Quick Action Widget
class QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;

  QuickAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue[700],
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

// Activity Item Widget
class ActivityItem extends StatelessWidget {
  final String title;
  final String subtitle;

  ActivityItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Icon(Icons.receipt, color: Colors.blue[700]),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward_ios, size: 14),
    );
  }
}

// Promotion Item Widget
class PromotionItem extends StatelessWidget {
  final String title;

  PromotionItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.local_offer, color: Colors.orange),
      title: Text(title),
    );
  }
}
