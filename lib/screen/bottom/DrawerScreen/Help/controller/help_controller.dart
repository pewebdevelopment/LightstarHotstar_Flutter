import 'package:get/get.dart';

class HelpController extends GetxController{
  var selectedIndex = 0.obs;

  List topCategoryList = [
    "Subscription, Plans and Pricing",
    "Accessing LightStar",
    "Buffering & Quality related",
    "Trouble on devices",
    "Help with your account",
    "Supported Devices"
  ];

  List topQueriList = [
    "I have done the recharge with Jio/Airtel/Vi/BSNL but my Lightstar subscription is not active.",
    "I have paid already; why am I being asked to pay again?",
    "I am unable to update the app on Android TV",
    "I have a mobile plan but being asked to pay/upgrade when watching on TV"
  ];

  List billingHelpList = [
    "How Do I Cancel My Subscription?",
    "Cancel Subscription (iOS Users)",
    "Renew your subscription via jio or Airtel",
    "I tried to use the code but it says voucher code is expired, what do i do?",
    "Review and Print/Save iTunes Subscription Invoices"
  ];

  List createAccountList = [
    "Review and Print/Save iTunes Subscription Invoices",
    "How to subscribe?",
    "How to sign up?",
    "How can I sign up with email id?"
  ];

  List cancellationList = [
    "How can I cancel plan bought via Partner Offers (Jio / Airtel / Vi / BSNL / Tata Sky recharge) or Flipkart Coupon?",
    "Issue a refund on Flipkart Plan; I now bought a Lightstar Premium Plan",
    "Issue a refund on Jio Plan; I now bought a Lightstar Premium Plan"
  ];

  List featureList = [
    "Do you provide LIVE TV?",
    "Do we have Dolby/ 5.1 sound?",
    "How to remove shows/movies from Watch list",
    "What is the 'Kids Safe' mode?",
    "How to enable/disable Subtitles?"
  ];

  List subscriptionList = [
    "I have recently renewed my Lightstar VIP subscription. Will I get a refund so I can subscribe to the new plan?",
    "I have an existing monthly premium INR 299/199 subscription via iTunes. What will happen to my active recurring subscription?",
    "How to activate Disney+ Hotstar Premium Plan paid via BSNL Superstar 300 plan?",
    "How to buy the new plans with Jio / Airtel / Vi / BSNL recharge and Flipkart coins?",
    "How will the new plan benefit me as VIP subscriber?",
    "How many paid shows/ movies I can download as per the plan?",
    "I upgraded via iTunes, but was charged full instead of the difference.",
    "What are your membership/subscription plans?",
    "Why have we not been informed about the change of plan earlier?",
    "How many devices can be accessed at the same time through the new plans?"
  ];
}