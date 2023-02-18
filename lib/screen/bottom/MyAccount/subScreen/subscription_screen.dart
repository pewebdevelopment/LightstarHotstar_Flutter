import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/controller/subscription_controller.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/pay_securely_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class SubscriptionScreen extends StatelessWidget {
  final SubscriptionController subscriptionController =
      Get.put(SubscriptionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.appColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 214,
                    width: Get.width,
                    child: Image(
                      image: AssetImage(ImageConst.subscription),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: ColorConst.white,
                      ),
                    ),
                  ),
                  Text(
                    "Upgrade to get more out of your Light Star\nsubscription",
                    textAlign: TextAlign.center,
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 18.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image(
                  image: AssetImage(
                    ImageConst.table,
                  ),
                  height: 313,
                  width: Get.width,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GetBuilder<SubscriptionController>(
                  init: SubscriptionController(),
                  builder: (controller) {
                    return ListView.builder(
                      itemCount: listPlan.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            controller.select(index);
                          },
                          child: Container(
                            width: Get.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? ColorConst.butColor.withOpacity(0.3)
                                  : ColorConst.grey3A,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listPlan[index]["t1"],
                                      style: TextStyleClass.sourceSansProBold(),
                                    ),
                                    Text(
                                      listPlan[index]["t2"],
                                      style: index == 0
                                          ? TextStyleClass
                                              .sourceSansProSemiBold(
                                              size: 12.0,
                                            )
                                          : TextStyleClass
                                              .sourceSansProSemiBold(
                                              size: 12.0,
                                              color: ColorConst.greyB0,
                                            ),
                                    ),
                                  ],
                                ),
                                controller.isSelect1 != index
                                    ? Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: ColorConst.butColor,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorConst.butColor,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: ColorConst.white,
                                          size: 10,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: CommonButton(
                  title: 'Upgrade Now',
                  onPress: () {
                    Get.to(() => PaySecurelyScreen());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Obx(
                      () => InkWell(
                        onTap: () {
                          subscriptionController.isCheck.value =
                              !subscriptionController.isCheck.value;
                        },
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: subscriptionController.isCheck.value == false
                                ? Colors.transparent
                                : ColorConst.butColor,
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: ColorConst.butColor,
                            ),
                          ),
                          child: Icon(
                            Icons.check,
                            color: subscriptionController.isCheck.value == false
                                ? Colors.transparent
                                : ColorConst.white,
                            size: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Get saved payment details from Paytm",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "You can also purchase 3 month plan @ LightStar.com In case of any query, email us at",
                        style: TextStyleClass.sourceSansProSemiBold(
                          color: ColorConst.greyB0,
                          size: 12.0,
                        ),
                      ),
                      TextSpan(
                        text: "Subscribe@LightStar.com",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  final List<Map> listPlan = [
    {
      "t1": "₹499.00 / Year",
      "t2": "Mobile \u2022 Current Plan",
    },
    {
      "t1": "₹899.00 / Year",
      "t2": "Super \u2022 Upgrade To",
    },
    {
      "t1": "₹1499.00 / Year",
      "t2": "Premium \u2022 Upgrade To",
    },
  ];
}
