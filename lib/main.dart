//main.dart
import 'package:demo/notifire/hp_notifire.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:demo/data/hp_data.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  //late AnimationController _animationController;
  /*
  @override
  void initState() {
    super.initState();

    //初期化
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), //1秒で0->1に到達
    );
    _animationController.repeat(); //0->1をリピートする
  }*/

  /*double f(double b) {
    final height = MediaQuery.of(context).size.height; // 画面の高さを取得
    // 係数は適当に設定
    final y = math.sin(b * 2 * math.pi) * 10 + height * 0.05;
    return y;
  }*/

  /*Color getCurrentHpColor(int hp) {
    if (hp > monsterHp.maxHp / 2) {
      return Colors.green;
    }
    if (hp > monsterHp.maxHp / 5) {
      return Colors.yellow;
    }
    return Colors.red;
  }*/

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 10),
    );
    useAnimation(animationController);
    final percentage = animationController.value * 100;

    useEffect(() {
      animationController.repeat();
      return () {};
    }, const []);

    final _notifire = ref.watch(hpNotifireProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('上下運動(Animation)'),
      ),
      body: Column(
        children: [
          /*SizedBox(
            height: 200,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) => Stack(
                children: [
                  Positioned(
                      left: MediaQuery.of(context).size.width / 2,
                      top: 10,//f(_animationController.value), // 高さが sin関数に従って変化する
                      width: 100,
                      child: Image.asset('images/monster.png'))
                ],
              ),
            ),
          ),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0 / 0,
                    valueColor: AlwaysStoppedAnimation(
                        //追加
                        Colors.green),
                    backgroundColor: Colors.grey,
                    minHeight: 20,
                  ),
                ),
              ),
              Text(''),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                //setState(() {});
              },
              child: const Text('ダメージを与える')),
          ElevatedButton(
              onPressed: () {
                //setState(() {});
              },
              child: const Text('リセットする')),
        ],
      ),
    );
  }
}
