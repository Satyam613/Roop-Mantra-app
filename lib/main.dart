// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:meraapp/screens/page1nav.dart';
// // // // // import 'package:meraapp/screens/page1upnav.dart';
// // // // // //import 'package:meraapp/lifeCycle_demo/page1.dart';
// // // // // //import 'package:meraapp/screens/BMI_input_screen.dart';
// // // // // //import 'package:meraapp/screens/demo2.dart';
// // // // // //import 'package:meraapp/screens/profile.dart';
// // // // // //import 'package:meraapp/model/weather_model_demo.dart';
// // // // // //import 'package:meraapp/screens/weather_screen.dart';
// // // // // import 'package:meraapp/shared_preference/login.dart';
// // // // // //import 'package:redux/redux.dart';
// // // // // //import 'flutter_redux_demos/flutter_redux.dart';
// // // // // // import 'package:meraapp/state_management_demos/set_state.dart';
// // // // // //import 'package:meraapp/screens/demo1.dart';

// // // import 'package:flutter/material.dart';
// // // //import 'package:flutter/widgets.dart';
// // // //import 'package:meraapp/LVdemos/List2.dart';
// // // import 'package:meraapp/Splashscreen/splash.dart';
// // // //import 'package:meraapp/LVdemos/list1.dart';

// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/material.dart';
// // import 'package:meraapp/firebase_options.dart';
// // import 'package:meraapp/screens/demo2.dart';
// // //import 'package:meraapp/Splashscreen/splash.dart';
// // import 'package:meraapp/screens/loginscreen.dart';
// // //import 'package:meraapp/shared_preference/login.dart';
// // //import 'package:meraapp/screens/loginscreen.dart';
// // //import 'package:meraapp/shared_preference/login.dart';

// // // void main() {
// // //   runApp(MaterialApp(
// // //     home: LoginScreen1(),
// // //   ));
// // // }
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// //   runApp(const Demo2());
// // }

// // // class App1 extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return const MaterialApp(
// // //       home: LoginScreen1(),
// // //     );
// // //   }
// // // }
// // // // // // class LocationApp extends StatelessWidget {
// // // // // //   const LocationApp({Key? key}) : super(key: key);

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return const MaterialApp(
// // // // // //       home: GeoScreen(),
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // void main(List<String> args) {
// // // // // //   runApp(
// // // // // //     const LocationApp(),
// // // // // //   );
// // // // // // }

// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:flutter/material.dart';

// // // void main() async {
// // // WidgetsFlutterBinding.ensureInitialized();
// // // var DefaultFirebaseOptions;
// // // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// // // runApp(const CounterApp());
// // // }

import 'dart:html';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meraapp/Splashscreen/splash.dart';
import 'package:meraapp/detail/d1.dart';
import 'package:meraapp/firebase_options.dart';
// import 'package:meraapp/bloc/cart/cart_bloc.dart';
// import 'package:meraapp/bloc/cart/cart_event.dart';
import 'package:meraapp/provider/cart_provider.dart';
import 'package:meraapp/screens/Fancy.dart';
import 'package:meraapp/screens/SaraswatiMaa.dart';
import 'package:meraapp/screens/finalHome.dart';
import 'package:meraapp/screens/girdview.dart';
import 'package:meraapp/screens/loginscreen.dart';
import 'package:meraapp/screens/view1.dart';
import 'package:meraapp/screens/view2.dart';
import 'package:meraapp/shared_preference/login.dart';

// import 'package:meraapp/screens/cart.dart';
// // import 'package:meraapp/screens/cartscreen.dart';
// import 'package:meraapp/screens/checkout.dart';
// import 'package:meraapp/screens/contol.dart';
// import 'package:meraapp/screens/finalHome.dart';
// import 'package:meraapp/screens/homekellton.dart';
// import 'package:meraapp/screens/loginscreen.dart';
// import 'package:meraapp/screens/shooping_ui.dart';
// import 'package:provider/provider.dart';

// import 'firebase_curddemos/add_user.dart';
// import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const FBFlutterApp());
}

class FBFlutterApp extends StatelessWidget {
  const FBFlutterApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash1(),
    );
  }
}

// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartInitial()) {
//     on<FetchEvent>(((event, emit) {}));
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:meraapp/screens/HomepagePro.dart';
// //import 'pajai maakage:meraapp/screens/Listproduct.dart';
// import 'package:meraapp/screens/cart.dart';
// import 'package:meraapp/screens/detailpage.dart';
// import 'package:meraapp/screens/finalHome.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Fhome(),
//   ));
// }

// void main() {
//   runApp(MaterialApp(
//     home: Maa(),
//   ));
// }

// Future main() async {
//   runApp(const SMDemoApp());
// }

// class SMDemoApp extends StatelessWidget {
//   const SMDemoApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(debugShowCheckedModeBanner: false, home: Fhome());
//   }
// }
