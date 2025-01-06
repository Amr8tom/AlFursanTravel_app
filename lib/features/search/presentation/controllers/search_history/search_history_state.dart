part of 'search_history_cubit.dart';

@immutable
sealed class SearchHistoryState {}

final class SearchHistoryInitial extends SearchHistoryState {}
final class SearchHistoryUpdateQuery extends SearchHistoryState {}
final class SearchHistoryAddTerm extends SearchHistoryState {}
final class SearchHistoryDeleteTerm extends SearchHistoryState {}
final class SearchHistoryUpdateFilter extends SearchHistoryState {}
