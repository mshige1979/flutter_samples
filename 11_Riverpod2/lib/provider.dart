import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref){
  return 'Reverpod';
});

final messageProvider = Provider<String>((ref) => 'Counter: ');

final countProvider = StateProvider<int>((ref) => 0);