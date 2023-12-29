import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:demo/data/hp_data.dart';
part 'hp_notifire.g.dart';

@riverpod
class HpNotifire extends _$HpNotifire {
  late HpData _hpData;

  @override
  void build() {
    // デフォルトの値で状態を初期化
    _hpData = const HpData();
  }

  // ダメージを処理するためのメソッド
  void damage() {
    _hpData = _hpData.copyWith(currentHp: _hpData.currentHp - 1);
  }

  // リセットを処理するためのメソッド
  void reset() {
    _hpData = _hpData.copyWith(currentHp: _hpData.maxHp);
  }
}
