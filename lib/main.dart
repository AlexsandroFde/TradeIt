import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trade_it/auth_check/auth_page.dart';
import 'package:trade_it/auth_check/bloc.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/firebase/firebase.dart';
import 'package:trade_it/models/utils.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(
    MaterialApp(
        scaffoldMessengerKey: Utils.messengerKey,
        navigatorKey: navigatorKey,
        theme: ThemeData(colorSchemeSeed: base),
        debugShowCheckedModeBanner: false,
        routes: rotas,
        home: AnimatedSplashScreen(
            backgroundColor: base,
            splash: "assets/images/trade_it_branco.jpg",
            splashIconSize: 200,
            nextScreen: BlocProvider<AuthPageBloc>(
                create: (BuildContext context) => AuthPageBloc(AuthPageLoadinState())..add(BuscarUsuario(login: null)),
                child: const AuthPage())
        )
    ),
  );
}