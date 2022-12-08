import 'package:alloy/packages.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.amber,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        title: SizedBox(
          width: 60,
          height: 50,
          child: SvgPicture.asset('./assets/logo/logo.svg'),
        ),
        flexibleSpace: Container(
          width: Get.width,
          height: 35,
          color: Colors.amber,
        ),
      ),
      drawer: drawer(),
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: const TextView(
          title: 'Home',
        ),
      )),
    );
  }

  Drawer drawer() {
    return Drawer(
      backgroundColor: Colors.grey[100],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: Colors.amber),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: TextView(
                        title: 'T',
                        color: Colors.amber,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  TextView(
                    title: 'Tristan jay Amit',
                    color: Color.fromARGB(255, 79, 88, 88),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    title: 'San roque',
                    color: Color.fromARGB(255, 79, 88, 88),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(Icons.person_outline_rounded,
                size: 28, color: Color.fromARGB(255, 79, 88, 88)),
            title: const TextView(
                title: 'Account',
                color: Color.fromARGB(255, 79, 88, 88),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            onTap: () {
              Get.toNamed('/account');
            },
          ),
          ListTile(
            leading: const Icon(Icons.business_center_outlined,
                size: 28, color: Color.fromARGB(255, 79, 88, 88)),
            title: const TextView(
                title: 'Business',
                color: Color.fromARGB(255, 79, 88, 88),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            onTap: () {
              Get.toNamed('/business');
            },
          ),
          ListTile(
            leading: const Icon(Icons.history_sharp,
                size: 30, color: Color.fromARGB(255, 79, 88, 88)),
            title: const TextView(
                title: 'History',
                color: Color.fromARGB(255, 79, 88, 88),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            onTap: () {
              Get.toNamed('/history');
            },
          ),
          ListTile(
            leading: const Icon(Icons.password_rounded,
                size: 28, color: Color.fromARGB(255, 79, 88, 88)),
            title: const TextView(
                title: 'Change Password',
                color: Color.fromARGB(255, 79, 88, 88),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            onTap: () {
              Get.toNamed('/password');
            },
          ),
          ListTile(
            leading: const Icon(Icons.warning_amber_outlined,
                size: 28, color: Color.fromARGB(255, 79, 88, 88)),
            title: const TextView(
                title: 'Terms and Condition',
                color: Color.fromARGB(255, 79, 88, 88),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            onTap: () {
              Get.toNamed('/terms');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline,
                size: 28, color: Color.fromARGB(255, 79, 88, 88)),
            title: const TextView(
                title: 'About',
                color: Color.fromARGB(255, 79, 88, 88),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            onTap: () {
              Get.toNamed('/about');
            },
          ),
          SizedBox(height: Get.height * 0.25),
          Center(
            child: MaterialButton(
              minWidth: Get.width * 0.7,
              height: 35,
              color: Colors.amber,
              onPressed: () {
                Get.toNamed('/signin');
              },
              child: const TextView(
                  title: "Log out",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
