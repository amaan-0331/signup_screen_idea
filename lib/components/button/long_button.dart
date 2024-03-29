import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton({Key key, this.btntext, this.btnfunc}) : super(key: key);
  final String btntext;
  final Function btnfunc;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: btnfunc,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width / 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(
        btntext,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
