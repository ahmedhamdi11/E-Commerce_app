import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controllers/auth_controllers/otp_controller.dart';
import '../../../core/shared/widgets/default_text_field.dart';

class OtpFormFields extends StatelessWidget {
  const OtpFormFields({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
      builder: (controller) => Form(
        key: controller.formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < controller.controllers.length; i++)
              SizedBox(
                width: 50,
                child: DefaultTextField(
                  controller: controller.controllers[i],
                  hint: '0',
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  autovalidateMode: controller.autovalidateMode,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(1),
                  ],
                  validator: (val) => controller.otpFormValidator(val),
                  onChanged: (val) =>
                      controller.onOtpFormFieldsChanges(val, i, context),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
