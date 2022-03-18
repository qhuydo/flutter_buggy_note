import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../helpers/hive_type_id_map.dart';

part 'search_history.freezed.dart';

part 'search_history.g.dart';

@freezed
class SearchHistory with _$SearchHistory {
  @HiveType(typeId: typeIdSearchHistory, adapterName: 'SearchHistoryAdapter')
  const factory SearchHistory({
    @Default('') @HiveField(0) String keyword,
  }) = _SearchHistory;
}
