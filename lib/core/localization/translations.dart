import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // arabic translations
        'ar': {
          // onboarding ar translation
          // onboarding titls
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

          //
          'continue': 'استمر',
          'skip': 'تخطي',

          // auth ar translations
          'sign_in': 'تسجيل الدخول',
          'signin_1': 'مرحبًا بعودتك',
          'signin_2':
              'قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو بستخدام وسائل التواصل الاجتماعي',
          'signin_3': 'أدخل بريدك الإلكتروني',
          'singnin_4': 'ادخل كلمة السر',
          'email': 'البريد الإلكتروني',
          'password': 'كلمة السر',
          'forgot_password': 'هل نسيت كلمة السر؟',
          'click_here': 'اضغط هنا',
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

          //
          'continue': 'Continue',
          'skip': 'Skip',

          // auth en translations
          'sign_in': 'Sign In',
          'signin_1': 'Welcome Back',
          'signin_2':
              'Sign in with your email and password\n or continue with social media',
          'signin_3': 'Enter your email',
          'singnin_4': 'enter your password',

          'email': 'Email',
          'password': 'Password',
          'forgot_password': 'Forgot your password?',
          'click_here': 'Click here',
        },
      };
}
