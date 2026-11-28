import 'package:flutter/material.dart';

Future<void> showAboutPaniDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (context) {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 24,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0x99FF7139),
                  Color(0x888B5CF6),
                ],
              ),
            ),
            padding: const EdgeInsets.all(1.5),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF191C32),
                borderRadius: BorderRadius.circular(22.5),
              ),
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 18),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 84,
                        height: 84,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'درباره پانی • Pani VPN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'پشت نام Pani VPN یک داستان کوچک و واقعی است: پانی، سگ کوچک، پشمالو و بامزه صاحب این پروژه است که معمولاً از روی مبلِ خانه نگهبانی می‌دهد! هرچند پانی جثه کوچک و ظاهر پشمالویی دارد، اما وقتی پای اینترنت آزاد وسط باشد، مثل یک نگهبان سریع، وفادار و بدون تبلیغات راه را باز می‌کند و تنها با یک لمس شما را به دنیای آزاد وصل می‌کند.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15.5,
                        height: 1.9,
                        color: Color(0xFFE8EEFF),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF7139),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text(
                          'بستن',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
