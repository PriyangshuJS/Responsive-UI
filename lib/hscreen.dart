import 'package:flutter/material.dart';

import 'widgets.dart';

class HScreen extends StatelessWidget {
  const HScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          _buildUserInfo(),
          const SizedBox(height: 10),
          _buildSectionTitle("Top Features"),
          const SizedBox(height: 10),
          const Features(),
          const SizedBox(height: 30),
          const Consult(),
          const SizedBox(height: 20),
          _buildSectionTitle("Top Donors"),
          const SizedBox(height: 20),
          const AvatarSection(),
          const SizedBox(height: 20),
          _buildSectionTitle("Health Checkup"),
          const SizedBox(height: 10),
          const MediCards(),
          const SizedBox(height: 20),
          _buildSectionTitle("Health Care Services"),
          const SizedBox(height: 10),
          const MediCards(),
          const SizedBox(height: 20),
          _buildSectionTitle("Hospitals"),
          const SizedBox(height: 10),
          const MediCards(),
          const SizedBox(height: 20),
          _buildSectionTitle("Trending Articles"),
          const SizedBox(height: 10),
          const MediCards(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return const Row(
      children: [
        CircleAvatarWidget(
          radius: 40,
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 102, 84, 94))),
          ],
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(225, 102, 84, 94),
          ),
        ),
      ),
    );
  }
}
