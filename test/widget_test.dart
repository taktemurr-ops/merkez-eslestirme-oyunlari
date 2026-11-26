import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_eslestirme_oyunlari/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-uclu-eslestirme',
      'oyun-mucevher-degistirme',
      'oyun-mahjong-solitaire',
      'oyun-tas-eslestirme',
      'oyun-baglantili-eslestirme',
      'oyun-blok-patlatma',
      'oyun-renk-doldurma',
      'oyun-cift-bul',
      'oyun-domino-eslestirme',
      'oyun-tas-cikarma',
      'oyun-kart-siralama',
      'oyun-grup-patlatma',
      'oyun-altigen-eslestirme',
      'oyun-urun-siralama',
      'oyun-iplik-yun-siralama',
      'oyun-icecek-siralama',
      'oyun-farki-bul',
      'oyun-gizli-nesne',
      'oyun-ortak-sembol-bulma',
      'oyun-3b-nesne-eslestirme',
      'oyun-uclu-birlestirme',
      'oyun-balon-patlatici',
      'oyun-top-zinciri',
      'oyun-meyve-birlestirme',
      'oyun-piksel-akisi',
      'oyun-tatli-tepsisi',
      'oyun-renk-dongusu',
    ]);
    expect(all.length, ids.length + 15);
    expect(all.toSet().length, all.length);
    expect(ids.toSet().length, ids.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
  });

  test('her oyun ve grup bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final g in hubConfig.groups) {
      expect(ids.contains(g.id), isTrue, reason: g.id);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}
