import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/theme/app_borders.dart';
import 'package:madshop_ui_dmitriev/theme/app_shadows.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:flutter/services.dart';

class AppProductCardOrder extends StatefulWidget {
  final String imagePath;
  final String title;
  final String option;
  final String price;

  const AppProductCardOrder({
    super.key,
    required this.imagePath,
    required this.title,
    required this.option,
    required this.price,
  });

  @override
  State<AppProductCardOrder> createState() => _AppProductCardOrderState();
}

class _AppProductCardOrderState extends State<AppProductCardOrder> {
  int count = 1;
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '$count');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _increment() {
    setState(() {
      count++;
      _controller.text = '$count';
    });
  }

  void _decrement() {
    if (count > 1) {
      setState(() {
        count--;
        _controller.text = '$count';
      });
    }
  }

  void _onInputChanged(String v) {
    final parsed = int.tryParse(v);
    if (parsed == null || parsed < 1) {
      return;
    }
    setState(() => count = parsed);
  }

  Widget _circleButton({required VoidCallback onTap, required IconData icon}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 20,
          color: AppColors.primary,
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    const imageBoxSize = 130.0;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: imageBoxSize,
                height: imageBoxSize,
                decoration: BoxDecoration(
                  color: AppColors.textWhite,
                  borderRadius: AppBorders.medium,
                  boxShadow: [AppShadows.light],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(widget.imagePath, fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppColors.textWhite,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(Icons.delete_outline, color: Colors.red, size: 16),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: imageBoxSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: AppTextStyles.contextSmall),
                  const SizedBox(height: 4),
                  Text(widget.option, style: AppTextStyles.contextMediumSmallBold),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(widget.price, style: AppTextStyles.contextMediumSmallBold),
                      ),
                      Row(
                        children: [
                          _circleButton(onTap: _decrement, icon: Icons.remove),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 64,
                            height: 36,
                            child: TextField(
                              controller: _controller,
                              textAlign: TextAlign.center,
                              style: AppTextStyles.inputSmall,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                filled: true,
                                fillColor: AppColors.blue,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: AppBorders.full,
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: AppBorders.full,
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              onChanged: _onInputChanged,
                            ),
                          ),
                          const SizedBox(width: 8),
                          _circleButton(onTap: _increment, icon: Icons.add),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
