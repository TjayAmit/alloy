import 'package:alloy/packages.dart';
import 'package:alloy/Component/Binding/binding_component.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALLOY',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const SigninView(),
      initialBinding: BindingComponent(),
      getPages: [
        GetPage(name: '/signin', page: () => const SigninView()),
        GetPage(name: '/signup', page: () => const SignupView()),
        GetPage(name: '/recovery', page: () => const ForgotPasswordView()),
        GetPage(name: '/account', page: () => const AccountView()),
        GetPage(name: '/home', page: () => const HomeView()),
        GetPage(name: '/history', page: () => const HistoryView()),
        GetPage(name: '/business', page: () => const BusinessView()),
        GetPage(name: '/product', page: () => const ProductView()),
        GetPage(name: '/password', page: () => const ChangePassword()),
        GetPage(name: '/terms', page: () => const TermsView()),
        GetPage(name: '/about', page: () => const AboutView()),
      ],
    );
  }
}
