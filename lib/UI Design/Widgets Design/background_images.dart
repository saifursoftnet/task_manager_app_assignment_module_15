
import 'package:flutter/material.dart';

class WithBackGroundImage extends StatelessWidget {

  final Widget child;
  final bool showBottomCircularLoading;

  const WithBackGroundImage(

    {
       super.key,
       required this.child,
      this.showBottomCircularLoading = false,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1480&q=80',

          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),

        child,
        showBottomCircularLoading ? const Positioned.fill (
          bottom: 15,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 24,
              height: 22,
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            ),
          ),
        )

            : const SizedBox(height: 1)
      ],
    );
  }
}










