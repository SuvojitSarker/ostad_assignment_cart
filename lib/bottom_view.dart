import 'package:flutter/material.dart';
import 'color.dart';

class BottomBar extends StatelessWidget {
  final double screenHeight, screenWidth;
  final Orientation orientation;
  final Function calculateTotalAmount;
  final Function showSnackBar;

  const BottomBar(
      {super.key,
        required this.screenHeight,
        required this.screenWidth,
        required this.orientation,
        required this.calculateTotalAmount,
        required this.showSnackBar});

  @override
  Widget build(BuildContext context) {
    if (orientation == Orientation.portrait) {
      return SizedBox(
        height: screenHeight * 0.13,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total amount",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.9,
                  ),
                ),
                Text(
                  "${calculateTotalAmount()}\$",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.9,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: screenHeight * 0.07,
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    elevation: 5,
                    shadowColor: Colors.red,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                onPressed: ()=> showSnackBar(),
                child: const Text("CHECK OUT"),
              ),
            ),
          ],
        ),
      );
    } else {
      return Center(
        child: SizedBox(
          height: screenHeight * 0.23,
          width: screenWidth * 0.70,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total amount",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.9,
                      ),
                    ),
                    Text(
                      "${calculateTotalAmount()}\$",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: screenWidth * 0.80,
                  height: screenHeight * 0.095,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF0000),
                        elevation: 5,
                        shadowColor: Colors.red.shade700,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500)),
                    onPressed: ()=> showSnackBar(),
                    child: const Text("CHECK OUT"),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}