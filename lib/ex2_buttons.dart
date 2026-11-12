import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.
enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disable(Colors.grey);

  const ButtonType(this.color);
  final Color color; 
}

enum IconPosition {left, right}
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Button')),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(
                label: 'Submit',
                icon: Icons.check
              ),

              CustomButton(
                label: 'Time',
                icon: Icons.access_time,
                iconPosition: IconPosition.right,
                type: ButtonType.secondary,
              ),

              CustomButton(
                label: 'Account',
                icon: Icons.account_tree,
                iconPosition: IconPosition.right,
                type: ButtonType.disable,
              ),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(icon, color: Colors.white, size: 18);
    final labelWidget = Text(
      label,
      style: const TextStyle(color: Colors.white),
    );

    final List<Widget> children = iconPosition == IconPosition.left
    ? [iconWidget, const SizedBox(width: 8), labelWidget]
    : [labelWidget, const SizedBox(width: 8), iconWidget];

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: type.color,
      borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
      );
  }
}
