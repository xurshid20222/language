import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: const Text('welcome', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),).tr()),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                const SizedBox(width: 7,),
                Expanded(
                    child: MaterialButton(
                      color: Colors.red,
                  onPressed: () {
                    context.locale = const Locale('en', 'US');
                  },
                  child: const Text('English').tr(),
                )),
                const SizedBox(width: 7,),
                Expanded(
                    child: MaterialButton(
                      color: Colors.orangeAccent,
                      onPressed: () {
                        context.locale = const Locale('ru', 'Ru');
                      },
                      child: const Text('Korean').tr(),
                    )),
                const SizedBox(width: 7,),
                Expanded(
                    child: MaterialButton(
                      color: Colors.purple,
                      onPressed: () {
                        context.locale = const Locale('ja', 'JP');
                      },
                      child: const Text('Japan',).tr(),
                    )),
                const SizedBox(width: 7,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
