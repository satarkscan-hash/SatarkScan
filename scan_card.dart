// scan_card.dart
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ScanCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const ScanCard({super.key, required this.icon, required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
          colors: [Color(0xFF131828), Color(0xFF0F1420)]),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.borderGold),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: AppTheme.gold, size: 24),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13)),
        const SizedBox(height: 2),
        Text(subtitle, style: TextStyle(color: AppTheme.textSecondary, fontSize: 10)),
        const Spacer(),
        Align(alignment: Alignment.centerRight,
          child: Icon(Icons.chevron_right, color: AppTheme.gold.withOpacity(0.4), size: 16)),
      ]),
    ),
  );
}
