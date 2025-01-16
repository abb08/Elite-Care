import 'package:elite_care/controller/login_register/LogInController.dart';
import 'package:elite_care/routes/routes_helper.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:elite_care/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///todo: remove injection from here
    Get.put(LogInController(), permanent: true);
    LogInController controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Dimentions.hight10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.chevron_left_sharp,
                          color: AppColors.greenTextColor,
                          size: Dimentions.hight70,
                        )),
                  ],
                ),
                SizedBox(
                  height: Dimentions.hight100,
                ),
                Image(
                  image: AssetImage("assets/images/logoWithTitle.png"),
                  height: Dimentions.logInLogoHight,
                  width: Dimentions.logInLogoWidth,
                ),
                SizedBox(
                  height: Dimentions.hight30,
                ),
                GetBuilder<LogInController>(builder: (controller) {
                  return Column(
                    children: [
                      CustomTextField(
                        hint: "Mobile Number",
                        valueController: controller.numberVal,
                        validator: controller.numberValidator,
                        label: 'Mobile Number',
                        onlyNumbers: true,
                        errorText: "Mobile Number Field can't be empty",
                      ),
                      CustomTextField(
                        hint: "Password",
                        valueController: controller.passwordVal,
                        label: 'Password',
                        validator: controller.passwordValidator,
                        obscureText: true,
                        errorText: "Password Field can't be empty",
                      ),
                    ],
                  );
                }),
                SizedBox(
                  height: Dimentions.hight70,
                ),
                InkWell(
                  onTap: () {
                    controller.fieldsEmptyCheck();
                    print(controller.numberValidator.toString() +
                        controller.passwordValidator.toString());

                    ///todo:login if statement if any is empty don't proceed
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: Dimentions.hight20),
                    height: Dimentions.hight45,
                    decoration: BoxDecoration(
                      color: AppColors.blueTextColor,
                      borderRadius: BorderRadius.circular(Dimentions.radius10),
                    ),
                    child: Center(
                      child: BigText(
                        text: "LOGIN",
                        size: Dimentions.font20,
                        bold: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimentions.hight10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(
                      text: "Don't have account yet?",
                      color: AppColors.blackTextColor,
                      size: Dimentions.font14,
                    ),
                    GetBuilder<LogInController>(builder: (controller) {
                      return InkWell(
                          onTap: () {
                            Get.toNamed(RouteHelpler.registerPage);
                          },
                          child: BigText(
                            text: " Register",
                            color: AppColors.greenTextColor,
                            size: Dimentions.font14,
                          ));
                    })
                  ],
                ),SizedBox(height: Dimentions.hight20,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
