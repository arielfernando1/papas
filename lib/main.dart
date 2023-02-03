import 'package:agroaquivr1/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ui_oauth/firebase_ui_oauth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:agroaquivr1/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // set providers
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    GoogleProvider(
        clientId:
            '333796334585-20ldqav06t4he6p7sue8qlo6dndhfsvr.apps.googleusercontent.com'),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        cardTheme: const CardTheme(
          color: Colors.transparent,
          elevation: 10,
        ),
      ),
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? '/sigin' : '/home_page',
      routes: {
        '/sigin': (context) {
          return SignInScreen(
            headerBuilder: (context, constraints, shrinkOffset) {
              return Padding(
                padding: const EdgeInsets.all(1),
                child: Image.asset(
                  'assets/images/logoo.png',
                ),
              );
            },
            actions: [
              ForgotPasswordAction(((context, email) =>
                  Navigator.of(context).pushNamed('/reset', arguments: email))),
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.of(context).pushNamed('/home_page');
              }),
            ],
          );
        },
        '/profile': (context) => const ProfileScreen(),
        '/home_page': (context) => const HomePage(),
      },
    );
  }
}
