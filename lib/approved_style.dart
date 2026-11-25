import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFFB02AA8), Color(0xFF6A1A8C), Color(0xFF2C0E52)],
  accent: Color(0xFFFF5BC8),
  card: Color(0xFF8A2AA8),
  play: Color(0xFFFF4FA8),
  number: Color(0xFFFFC93C),
  heroAsset: 'assets/approved/hero.png',
  blocks: [ApprovedBlock.chips, ApprovedBlock.featured, ApprovedBlock.dailyReward],
  featuredKey: 'featured',
  featured: ['oyun-uclu-eslestirme', 'oyun-icecek-siralama', 'oyun-tas-eslestirme'],
  tileArt: {
    'oyun-uclu-eslestirme': 'assets/approved/tile_eslestir.png',
    'oyun-icecek-siralama': 'assets/approved/tile_renk.png',
    'oyun-tas-eslestirme': 'assets/approved/tile_sekil.png',
  },
);
