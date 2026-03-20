// alert_tile.dart
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

enum AlertType { danger, warning, info }

class AlertTile extends StatelessWidget {
  final AlertType type;
  final String title;
  final String desc;
  final String time;
  final int reports;
  const AlertTile({super.key, required this.type, required this.title, required this.desc, required this.time, required this.reports});

  @override
  Widget build(BuildContext context) {
    final color = type == AlertType.danger ? AppTheme.danger : type == AlertType.warning ? AppTheme.warning : AppTheme.gold;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.06),
        borderRadius: BorderRadius.circular(10),
        border: Border(left: BorderSide(color: color, width: 3), top: BorderSide(color: color.withOpacity(0.15)), right: BorderSide(color: color.withOpacity(0.15)), bottom: BorderSide(color: color.withOpacity(0.15))),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(margin: const EdgeInsets.only(top: 4), width: 8, height: 8,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color,
            boxShadow: [BoxShadow(color: color.withOpacity(0.5), blurRadius: 6)])),
        const SizedBox(width: 10),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12)),
          const SizedBox(height: 3),
          Text(desc, style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 11, height: 1.4)),
          const SizedBox(height: 4),
          Text('$time · $reports reports', style: TextStyle(color: Colors.white30, fontSize: 10)),
        ])),
      ]),
    );
  }
}
