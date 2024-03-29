import 'package:flutter/material.dart';
import 'package:signup_screen/components/field_background/field_background.dart';
import 'package:signup_screen/components/text_input/text_input.dart';

class MobileNumberField extends StatelessWidget {
  const MobileNumberField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            FieldBackground(
              screen: screen,
              longBtnText: 'Next',
              nextButtonFunc: () {
                final TabController controller =
                    DefaultTabController.of(context);
                controller.animateTo(controller.index + 1);
              },
              previousButtonFunc: () {
                final TabController controller =
                    DefaultTabController.of(context);
                controller.animateTo(controller.index - 1);
              },
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screen.width * 0.08),
                child: TextInput(
                  inputType: TextInputType.number,
                  lblText: 'Mobile number',
                  hintText: 'Your Mobile Number Goes here...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
