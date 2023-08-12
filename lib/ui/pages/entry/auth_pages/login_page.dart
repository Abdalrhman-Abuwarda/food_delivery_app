part of pages;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;

      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      ServiceNavigation.serviceNavi
          .pushNamedAndRemoveUtils(RouteGenerator.mainPage);
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? mediumStyle = Theme.of(context).textTheme.labelMedium;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AuthHeader(
              title: "Login",
              caption: "Add your details to login",
            ),
            addVerticalSpace(AppSize.s35.h),
            MainTextField(
              text: 'Your Email',
              type: TextInputType.emailAddress,
              controller: emailController,
            ),
            addVerticalSpace(AppSize.s28.h),
            MainTextField(
              text: 'Password',
              type: TextInputType.visiblePassword,
              obscure: true,
              controller: passwordController,
            ),
            addVerticalSpace(AppSize.s28.h),
            CustomButton(
              text: 'Login',
              onPress: _signInWithEmailAndPassword,
            ),
            addVerticalSpace(AppSize.s28.h),
            TextButton(
              onPressed: () {
                ServiceNavigation.serviceNavi
                    .pushNamedWidget(RouteGenerator.resetPasswordPage);
              },
              child: Text(
                "Forgot your password?",
                style: mediumStyle,
              ),
            ),
            addVerticalSpace(AppSize.s45.h),
            Text(
              "or Login With",
              style: mediumStyle,
            ),
            addVerticalSpace(AppSize.s28.h),
            CustomButton(
              text: 'Login with Facebook',
              onPress: () {},
              icon: Icons.facebook,
              color: const Color(0xFF367FC0),
            ),
            addVerticalSpace(AppSize.s28.h),
            CustomButton(
              text: 'Login with Google',
              onPress: () {},
              icon: Icons.facebook,
              color: const Color(0xFFDD4B39),
            ),
            const Spacer(),
            FooterAuth(
              text: "Don't have an Account?",
              textButton: 'Sign Up',
              onPressed: () {
                ServiceNavigation.serviceNavi
                    .pushNamedWidget(RouteGenerator.signUpPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// yahya@gmail.com
// mmMM112233$
