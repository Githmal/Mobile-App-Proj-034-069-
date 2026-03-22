import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_page.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
  url: 'https://fhrkhaxcjtgtwnigboaf.supabase.co',
  anonKey: 'sb_publishable_7jtq4KBsJdRaJA5ORNkjSg_UC21ieVi',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Tech Store',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        colorScheme: ColorScheme.dark(
          primary: Colors.yellow.shade700,
          surface: Colors.grey.shade900,
        ),
      ),

      home: Supabase.instance.client.auth.currentSession != null
          ? const HomePage()
          : const LoginPage(),
    );
  }
}