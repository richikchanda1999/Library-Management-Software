import 'package:stripe_payment/stripe_payment.dart';

void init() {
  StripePayment.setOptions(
      StripeOptions(publishableKey: api_key, merchantId: "Test", androidPayMode: 't'
          'est'));
}

void pay(String price) {
  StripePayment.paymentRequestWithNativePay(
    androidPayOptions: AndroidPayPaymentRequest(
      total_price: price,
      currency_code: "INR",
    ),
    applePayOptions: ApplePayPaymentOptions(
      countryCode: 'IN',
      currencyCode: 'INR',
      items: [
        ApplePayItem(
          label: 'Test',
          amount: '13',
        )
      ],
    ),
  ).then((v) {
      print(v.tokenId);
  });
}

String api_key = "pk_test_2aKhK0gNsC1T34i3TuWSod7I008YWtP2FD";
