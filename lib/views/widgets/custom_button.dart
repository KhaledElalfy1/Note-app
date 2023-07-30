import 'package:flutter/material.dart';

import '../../constatnts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading=false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: isLoading ? const CircularProgressIndicator():
         const Text(
          'Save',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
