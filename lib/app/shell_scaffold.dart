import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellScaffold extends StatelessWidget {
  const ShellScaffold({
    required this.child,
    required this.state,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final GoRouterState state;

  int _calculateSelectedIndex() {
    final String location = state.matchedLocation;
    
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/recommended')) {
      return 1;
    }
    if (location.startsWith('/courses')) {
      return 2;
    }
    if (location.startsWith('/profile')) {
      return 3;
    }
    return 0; // Default fallback
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/recommended');
        break;
      case 2:
        context.go('/courses');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(),
        onTap: (index) => _onItemTapped(index, context),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: "Recommended"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Courses"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}