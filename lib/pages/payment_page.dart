import 'dart:convert';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:fitness/widgets/payment_page_slides.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedIndex = 0;

  Future<void> initPaymentSheet() async {
    try {
      final response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization':
              'Bearer sk_test_51H3yqVJNwV2vxLP6IweKuPqI2USH4eqp9Nnma5YADpFJ7gqmKjsfsT4DZCkp56tos428s1S0UuAjECeNkdPKD2qJ00wJRHKfho',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: {
          'amount': '2400',
          'currency': 'usd',
          'payment_method_types[]': 'card'
        },
      );

      final paymentIntent = jsonDecode(response.body);

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent['client_secret'],
          merchantDisplayName: 'Example Merchant',
        ),
      );

      setState(() {});
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  Future<void> presentPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Payment successful!')),
      );
    } catch (e) {
      if (e is StripeException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Error from Stripe: ${e.error.localizedMessage}')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              scrollDirection: Axis.horizontal,
              reverse: true,
              physics: const BouncingScrollPhysics(),
              controller: controller,
              children: const [
                PaymentPageSlides(),
                PaymentPageSlides(),
              ],
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  DotsIndicator(
                    onTap: (value) {
                      setState(() {
                        selectedIndex = value.toInt();
                      });
                      controller.animateToPage(
                        value.toInt(),
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    position: selectedIndex,
                    dotsCount: 2,
                    decorator: const DotsDecorator(
                      size: Size(10, 10),
                      color: Colors.white,
                      activeColor: Colors.green,
                      activeSize: Size(10, 10),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () async {
                  await initPaymentSheet();
                  await presentPaymentSheet();
                },
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      width: 0.1,
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Choose Your Plan",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          secondReuseableText("We appreciate your support <3"),
        ],
      ),
    );
  }
}
