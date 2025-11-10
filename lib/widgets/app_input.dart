import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/theme/app_borders.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';

class AppInput extends StatefulWidget {
  final String placeholder;
  final bool isBlue;
  final bool isPassword;
  final String? imagePath;

  const AppInput({
    super.key,
    required this.placeholder,
    this.isBlue = false,
    this.isPassword = false,
    this.imagePath,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.isBlue ? AppColors.blue : AppColors.gray;
    final textColor = widget.isBlue ? AppColors.onBlue : null;
    final dividerColor = widget.isBlue ? AppColors.onBlue : AppColors.textBlack;

    Widget? prefixIcon;
    if (widget.imagePath != null && widget.imagePath!.isNotEmpty) {
      prefixIcon = Padding(
        padding: const EdgeInsets.only(left: 12, right: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                widget.imagePath!,
                width: 28,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 1,
              height: 24,
              color: dividerColor,
            ),
            const SizedBox(width: 12),
          ],
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: TextField(
        obscureText: widget.isPassword ? _obscureText : false,
        style: AppTextStyles.inputSmall.copyWith(color: textColor),
        decoration: InputDecoration(
          hintText: widget.placeholder,
          hintStyle: AppTextStyles.inputSmallPlaceholder.copyWith(
            color: widget.isBlue ? AppColors.onBlue : null,
          ),
          filled: true,
          fillColor: backgroundColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: AppBorders.full,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppBorders.full,
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: widget.isBlue ? AppColors.onBlue : AppColors.onGrayPlaceholder,
                  ),
                  onPressed: () {
                    setState(() => _obscureText = !_obscureText);
                  },
                )
              : null,
        ),
      ),
    );
  }
}