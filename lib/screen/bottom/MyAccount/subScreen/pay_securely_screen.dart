import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/controller/subscription_controller.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/verify_securely_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class PaySecurelyScreen extends StatelessWidget {
  final SubscriptionController subscriptionController =
      Get.put(SubscriptionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Pay Securely",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                subscriptionController.isSelect2.value =
                    !subscriptionController.isSelect2.value;
              },
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: ColorConst.grey3A,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(ImageConst.play),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Super Plan",
                                  style: TextStyleClass.sourceSansProSemiBold(),
                                ),
                                Text(
                                  "Valid Until 9 Nov, 2023",
                                  style: TextStyleClass.sourceSansProSemiBold(
                                    size: 12.0,
                                    color: ColorConst.greyB0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "₹899.00 / Year",
                              style: TextStyleClass.sourceSansProSemiBold(),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: ColorConst.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Obx(
                      () => subscriptionController.isSelect2.value == false
                          ? Container()
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Text(
                                  "Bill Details",
                                  style: TextStyleClass.sourceSansProSemiBold(),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Starlight Super Plan",
                                      style:
                                          TextStyleClass.sourceSansProSemiBold(
                                        color: ColorConst.greyB0,
                                      ),
                                    ),
                                    Text(
                                      "899",
                                      style:
                                          TextStyleClass.sourceSansProSemiBold(
                                        color: ColorConst.greyB0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Remaining Balance",
                                      style:
                                          TextStyleClass.sourceSansProSemiBold(
                                        color: ColorConst.greyB0,
                                      ),
                                    ),
                                    Text(
                                      "140.25",
                                      style:
                                          TextStyleClass.sourceSansProSemiBold(
                                        color: ColorConst.greyB0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "To Pay",
                                      style: TextStyleClass.sourceSansProBold(
                                        color: ColorConst.greyB0,
                                      ),
                                    ),
                                    Text(
                                      "758.75",
                                      style: TextStyleClass.sourceSansProBold(
                                        color: ColorConst.greyB0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: Get.width,
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 25),
              decoration: BoxDecoration(
                color: ColorConst.grey3A,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.butColor,
                      size: 12.0,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Credit Cards",
                    style: TextStyleClass.sourceSansProSemiBold(),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      bottomSheet1();
                    },
                    child: Image(
                      image: AssetImage(
                        ImageConst.cardB,
                      ),
                      height: 50,
                      width: Get.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: Get.width,
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 25),
              decoration: BoxDecoration(
                color: ColorConst.grey3A,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Debit Cards",
                    style: TextStyleClass.sourceSansProSemiBold(),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      bottomSheet1();
                    },
                    child: Image(
                      image: AssetImage(
                        ImageConst.cardB,
                      ),
                      height: 50,
                      width: Get.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: Get.width,
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 25),
              decoration: BoxDecoration(
                color: ColorConst.grey3A,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wallets",
                    style: TextStyleClass.sourceSansProSemiBold(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              ImageConst.paytm,
                            ),
                            height: 14,
                          ),
                          SizedBox(width: 14),
                          Text(
                            "Paytm",
                            style: TextStyleClass.sourceSansProRegular(),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          bottomSheet2();
                        },
                        child: Text(
                          "PAY NOW",
                          style: TextStyleClass.sourceSansProBold(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: Get.width,
              padding:
                  EdgeInsets.only(right: 20, left: 10, top: 14, bottom: 10),
              decoration: BoxDecoration(
                color: ColorConst.grey3A,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "UPI",
                      style: TextStyleClass.sourceSansProSemiBold(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                      bottomSheet3();
                    },
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.add_circle_outline_outlined,
                            size: 35,
                            color: ColorConst.white,
                          ),
                        ),
                        Text(
                          "PAY NOW",
                          style: TextStyleClass.sourceSansProBold(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "You will be charged ₹899 onec a year until you cancel. By proceeding, I confirm that I am over 18, and I agree to the",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.greyB0,
                        size: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: " Terms of use",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.greyB0,
                        size: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: " Privacy Policy.",
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
    );
  }

  bottomSheet1() {
    return Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: ColorConst.appColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Credit / Debit Cards",
                    style: TextStyleClass.sourceSansProSemiBold(),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image(
                    image: AssetImage(ImageConst.creditCard),
                    height: 176,
                    width: Get.width,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Your card will be securely stored as per RBI guidelines and you will be charged ₹899 every year until you cancel. Click pay securely to proceed.",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 12.0,
                      color: ColorConst.greyB0,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: Get.width,
                  height: 95,
                  decoration: BoxDecoration(
                    color: ColorConst.grey3A,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "₹899.00 / Year",
                          style: TextStyleClass.sourceSansProBold(
                            size: 16.0,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: CommonButton(
                            title: 'Pay Securely',
                            onPress: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bottomSheet2() {
    return Get.bottomSheet(
      Container(
        padding: EdgeInsets.only(
          top: 22,
        ),
        decoration: BoxDecoration(
          color: ColorConst.appColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image(
                image: AssetImage(ImageConst.paytm),
                height: 20,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  CommonTextFieldMo(hintText: 'Paytm registered mobile number'),
            ),
            SizedBox(height: 50),
            Container(
              width: Get.width,
              height: 95,
              decoration: BoxDecoration(
                color: ColorConst.grey3A,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "₹899.00 / Year",
                      style: TextStyleClass.sourceSansProBold(
                        size: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 86,
                    ),
                    Expanded(
                      child: CommonButton(
                        title: 'Continue',
                        onPress: () {
                          Get.to(() => VerifySecurelyScreen());
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bottomSheet3() {
    return Get.bottomSheet(
      Container(
        padding: EdgeInsets.only(
          top: 22,
        ),
        decoration: BoxDecoration(
          color: ColorConst.appColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Enter UPI ID",
                style: TextStyleClass.sourceSansProBold(
                  size: 16.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 50,
                width: Get.width,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: ColorConst.white.withOpacity(0.06),
                  border: Border.all(
                    color: ColorConst.white,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "mobilenumber@upi or username@bank",
                    hintStyle: TextStyleClass.sourceSansProRegular(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: Get.width,
              height: 95,
              decoration: BoxDecoration(
                color: ColorConst.grey3A,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "₹899.00 / Year",
                      style: TextStyleClass.sourceSansProBold(
                        size: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 86,
                    ),
                    Expanded(
                      child: CommonButton(
                        title: 'Continue',
                        onPress: () {
                          Get.to(() => VerifySecurelyScreen());
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
