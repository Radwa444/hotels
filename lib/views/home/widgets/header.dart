import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GeometricShape(),
      child: Container(
        height: 50,
        width: 180,
        decoration: const BoxDecoration(
            color: Colors.blueAccent,
            border: Border(right: BorderSide(color: Colors.white, width: 2))),
        child: const Padding(
          padding: EdgeInsets.only(top: 12, left: 7),
          child: Text('Hotels Search',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

class GeometricShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(130, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
