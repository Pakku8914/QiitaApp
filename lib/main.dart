import 'package:flutter/material.dart';
import 'package:qiita_app/screens/search_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async { // main関数をFutureに変更
  await dotenv.load(fileName: '.env'); // .envファイルを読み込み
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qiita Search', // titleを追加
      theme: ThemeData( // themeを追加
        primarySwatch: Colors.green,
        fontFamily: 'Hiragino Sans',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF55C500),
        ),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
        ),
      ),
      home: const SearchScreen(), // SearchScreenを設定
    );
  }
}