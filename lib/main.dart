import 'package:alloy/packages.dart';
import 'package:alloy/Component/Binding/binding_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
        GetPage(name: '/home', page: () => const HomeView()),
        GetPage(name: '/history', page: () => const HistoryView()),
        GetPage(name: '/business', page: () => const BusinessView()),
        GetPage(name: '/b', page: () => const ProductView())
      ],
    );
  }
}
