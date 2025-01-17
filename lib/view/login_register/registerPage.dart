import 'package:elite_care/controller/login_register/LogInController.dart';
import 'package:elite_care/controller/login_register/registerationController.dart';
import 'package:elite_care/routes/routes_helper.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:elite_care/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///todo: remove injection from here
    Get.put(RegisterController(), permanent: true);
    RegisterController controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
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
                  height: Dimentions.hight30,
                ),
                Image(
                  image: AssetImage("assets/images/logoWithTitle.png"),
                  height: Dimentions.logInLogoHight,
                  width: Dimentions.logInLogoWidth,
                ),
                SizedBox(
                  height: Dimentions.hight20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20),
                    child: BigText(
                      text: 'CHOOSE REGISTRATION TYPE',
                      color: AppColors.textColor,
                      size: Dimentions.font16,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimentions.width20,
                        vertical: Dimentions.hight10),
                    width: double.maxFinite,
                    height:Dimentions.hight50,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimentions.radius10),
                        border: Border.all(color: Colors.grey)),
                    child: GetBuilder<RegisterController>(builder: (controller) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: controller.dropdownvalue,
                          items: controller.items.map((String items) {
                            return DropdownMenuItem(
                        
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          dropdownColor: Colors.white,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimentions.width10),
                          isExpanded: true,
                          style: TextStyle(color: AppColors.textColor,fontSize: Dimentions.font20,fontWeight: FontWeight.w500),
                          // Array list of items
                        
                          onChanged: (String? newValue) {
                            controller.dropDownSelect(newValue);
                          },
                        ),
                      );
                    })),
                GetBuilder<RegisterController>(builder: (controller) {
                  return Column(
                    children: [
                      CustomTextField(
                        hint: "Full Name",
                        valueController: controller.nameValue,
                        validator: controller.nameValidator,
                        label: 'Full Name',
                        errorText: "Name Field can't be empty",
                      ),
                      CustomTextField(
                        hint: "Mobile Number",
                        valueController: controller.numberValue,
                        label: 'Mobile Number',
                        validator: controller.numberValidator,
                        onlyNumbers: true,
                        errorText: "Mobil Number Field can't be empty",
                      ),
                      CustomTextField(
                        hint: "Password",
                        valueController: controller.passwordValue,
                        label: 'Password',
                        validator: controller.numberValidator,
                        obscureText: true,
                        errorText: "Password Field can't be empty",
                      ),
                      CustomTextField(
                        hint: "Confirm Password Number",
                        valueController: controller.confirmPasswordValue,
                        label: 'Confirm Password',
                        validator: controller.passwordMismatch,
                        obscureText: true,
                        errorText: controller.confirmPasswordValidator
                            ? "This Field can't be empty"
                            : "The passwords you entered doesn't match",
                      ),
                    ],
                  );
                }),
                SizedBox(
                  height: Dimentions.hight70,
                ),
                InkWell(
                  onTap: () {
                    controller.fieldsCheck();

                    ///todo:register if statement if any is empty don't proceed
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
                        text: "SIGN UP",
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
                      text: "ALREADY HAVE ACCOUNT?",
                      color: AppColors.blackTextColor,
                      size: Dimentions.font14,
                    ),
                    GetBuilder<LogInController>(builder: (controller) {
                      return InkWell(
                          onTap: () {
                            Get.toNamed(RouteHelpler.loginPage);
                          },
                          child: BigText(
                            text: " Log in",
                            color: AppColors.greenTextColor,
                            size: Dimentions.font14,
                          ));
                    })
                  ],
                ),
                SizedBox(
                  height: Dimentions.hight45,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
