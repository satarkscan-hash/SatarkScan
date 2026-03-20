// gold_button.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class GoldButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool isLoading;
  const GoldButton({super.key, required this.label, required this.onTap, this.isLoading = false});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: isLoading ? null : onTap,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [AppTheme.gold, AppTheme.goldDim]),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [BoxShadow(color: AppTheme.gold.withOpacity(0.25), blurRadius: 20, offset: const Offset(0, 4))],
      ),
      child: Center(child: isLoading
        ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(color: AppTheme.bgDark, strokeWidth: 2))
        : Text(label, style: GoogleFonts.orbitron(fontSize: 13, fontWeight: FontWeight.w700, color: AppTheme.bgDark, letterSpacing: 2))),
    ),
  );
}
