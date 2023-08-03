import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // arabic translations
        'ar': {
          // single words ar translations
          'continue': 'اشطا',
          'skip': 'تخطي',
          'success': 'تم بنجاح',

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
          'dont_have_an_account': 'ليس لديك حساب؟',
          'sign_up': 'سجل الان',
          'enter_your_phone': 'أدخل رقم هاتفك',
          'phone_number': 'رقم الهاتف',
          'username': 'اسم المستخدم',
          'enter_your_username': 'أدخل اسم المستخدم الخاص بك',
          'signup_1': 'أنشا حساب الأن',
          'signup_2':
              'قم بالتسجيل باستخدام \n بريدك الإلكتروني وكلمة المرور لتبدأ',
          'eter_your_email_to_reset_password':
              'أدخل عنوان بريدك الإلكتروني \n لإعادة تعيين كلمة السر الخاصة بك',
          'verify_your_email': 'قم بتأكيد بريدك الألكتروني',
          'otp_body_text': 'الرجاء إدخال الكود \n المرسل إلي',
          'reset_password': 'اعد ضبط كلمه السر',
          'new_password': 'كلمة السر الجديدة',
          'new_password_hint': 'أدخل كلمة السر الجديدة',
          'confirm_password_hint': 'أدخل كلمة السر الجديدة مرة أخرى',
          'confirm_password': 'أكد كلمة السر',
          'password_reset_success': 'تمت إعادة تعيين كلمة المرور الخاصة بك ',
          'register_success': 'تم انشاء الحساب بنجاح ، يمكنك تسجيل الدخول الآن',

          // input validation translations
          'cannot_be_empty': 'هذا الحقل لا يمكن ان يكون فارغا',
          'cannot_be_less': 'لا يمكن أن يكون هذا الحقل أقل من',
          'cannot_be_grater': 'هذا الحقل لا يمكن أن يكون أكثر من',
          'not_valid_username': 'اسم مستخدم غير صالح',
          'not_valid_email': 'بريد إلكتروني غير صالح',
          'not_valid_phone': 'رقم هاتف غير صالح',

          'password_must_have_number':
              'يجب أن تحتوي كلمة السر على رقم واحد على الأقل',
          'password_must_have_uppercase':
              'يجب أن تحتوي كلمة السر على حرف إنجليزي كبير',
          'password_must_have_lowercase':
              'يجب أن تحتوي كلمة السر على حرف إنجليزي صغير ',
          'must_have_special_character':
              'يجب أن تحتوي كلمة المرور على حرف خاص واحد على الأقل',
        },

        // english translations
        'en': {
          // single words en translations
          'continue': 'Continue',
          'skip': 'Skip',
          'success': 'Success',

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
          'dont_have_an_account': 'Don\'t have an account?',
          'sign_up': 'Sign Up',
          'enter_your_phone': 'Enter your phone number',
          'phone_number': 'Phone number',
          'username': 'Username',
          'enter_your_username': 'Enter your username',
          'signup_1': 'Sign Up Now',
          'signup_2': 'Sign up with your email and passowrd \n to get started',
          'eter_your_email_to_reset_password':
              'Enter your email adress  to \n reset your password',
          'verify_your_email': 'Verify your email',
          'otp_body_text': 'Please enter the digit code \n sent to ',
          'reset_password': 'Reset your password',
          'new_password': 'New Password',
          'new_password_hint': 'Enter your new password',
          'confirm_password_hint': 'Enter your new password again',
          'confirm_password': 'Confirm Password',
          'password_reset_success':
              'Your password is reset, sign in now with your new password',
          'register_success': 'Register done successfully, you can sign in now',

          // input validation translations
          'cannot_be_empty': 'This field cannot be empty',
          'cannot_be_less': 'This field can\'t be less than',
          'cannot_be_grater': 'This field can\'t be grater than',
          'not_valid_username': 'Not valid username',
          'not_valid_email': 'Not valid email',
          'not_valid_phone': 'Not valid phone number',
          'password_must_have_number': 'password must have at least 1 number',
          'password_must_have_uppercase':
              'password must have at least 1 uppercase',
          'password_must_have_lowercase':
              'password must have at least 1 lowercase',
          'must_have_special_character':
              'password must have at least 1 special character',
        },
      };
}
