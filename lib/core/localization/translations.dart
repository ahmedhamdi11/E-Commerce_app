import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // arabic translations
        'ar': {
          // onboarding titls ar
          'title_1': 'اختر منتجاتك',
          'title_2': 'دفع سهل وآمن',
          'title_3': 'أتبع طلبك',
          'title_4': 'توصيل سريع',

          //  onboarding body ar
          'body_1':
              'لدينا أكثر من 100 ألف منتج ، اختر منتجك من متجر التجارة الإلكترونية الخاص بنا .',
          'body_2':
              'طريقة دفع سهلة وآمنة. موثوق به من قبل عملائنا من جميع أنحاء العالم.',
          'body_3':
              'تم استخدام أفضل أداة تعقب لتتبع طلبك. ستعرف مكان وجود منتجك في الوقت الحالي.',
          'body_4':
              'موثوقة وسرعة التسليم. نقوم بتسليم منتجك بأسرع طريقة ممكنة.',

          ////////////
          'continue': 'استمر',
          'skip': 'تخطي',
        },

        // english translations
        'en': {
          //  onboarding titls en
          'title_1': 'Choose Your Products',
          'title_2': 'Easy & Safe Payment',
          'title_3': 'Track Your Order',
          'title_4': 'Fast Delivery',

          // onboarding Body en
          'body_1':
              'We have more than 100k product, Choose your product from our E-Commerce Shop.',

          'body_2':
              'Easy Checkout & Safe Payment metho. Trusted by our Customers from all over the world.',

          'body_3':
              'Best tracker has been used to track your order. You\'ll know where your product is at the moment.',

          'body_4':
              'Reliable And Fast Delivery. We Deliver your product the fastest way possible.',

          ////////////
          'continue': 'Continue',
          'skip': 'Skip',
        },
      };
}
