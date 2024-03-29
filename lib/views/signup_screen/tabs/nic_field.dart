import 'package:flutter/material.dart';
import 'package:signup_screen/components/field_background/field_background.dart';
import 'package:signup_screen/components/text_input/text_input.dart';
import 'package:signup_screen/utils/validator.dart';

class NICField extends StatelessWidget {
  const NICField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String nic = '';
    final TextEditingController textController = TextEditingController();
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

                FocusScope.of(context).unfocus();
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
                  // onChangedFunc: (value) => setState(()=>nic=value),
                  validatorFunc: nicValidator(),
                  inputController: textController,
                  lblText: 'nic number',
                  hintText: 'Your NIC Number Goes here...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
