import 'package:vania/src/database/pagination.dart';
import 'package:vania/src/database/simple_pagination.dart';
import 'package:vania/vania.dart';

extension Pagination on QueryBuilder {
  Future<Map> paginate(
      [int perPage = 15, int page = 1, String? basePath]) async {
    basePath ?? _getValidBaseUrl(env('APP_URL'));
    final total = await count();
    final lastPage = (total / perPage).ceil();
    final data = await limit(perPage).offset((page - 1) * perPage).get();

    return PaginationResult(
      total: total,
      perPage: perPage,
      page: page,
      lastPage: lastPage,
      previousPage: page > 1 ? page - 1 : null,
      nextPage: page < lastPage ? page + 1 : null,
      nextLink: page < lastPage ? '$basePath?page=${page + 1}' : '',
      previousLink: page > 1 ? '$basePath?page=${page - 1}' : '',
      lastLink: '$basePath?page=$lastPage',
      firstLink: '$basePath?page=1',
      data: data,
    ).response();
  }

  String? _getValidBaseUrl(String? url) {
    if (url == null || url.isEmpty) {
      throw ArgumentError('Base URL must be provided and cannot be empty.');
    }
    // Further validation can be added here (e.g., URL format validation)
    return url;
  }

  @Deprecated(
      'Use simplePaginate instead. This method will be removed in future releases.')
  Future<Map> simplePagination([int perPage = 15, int page = 1]) async {
    final total = await count();
    final lastPage = (total / perPage).ceil();
    final data = await limit(perPage).offset((page - 1) * perPage).get();

    return SimplePaginationResult(
      next: page < lastPage ? page + 1 : null,
      previous: page > 1 ? page - 1 : null,
      last: lastPage,
      total: total,
      data: data,
    ).response();
  }

  Future<Map> simplePaginate([int perPage = 15, int page = 1]) async {
    final total = await count();
    final lastPage = (total / perPage).ceil();
    final data = await limit(perPage).offset((page - 1) * perPage).get();

    return SimplePaginationResult(
      next: page < lastPage ? page + 1 : null,
      previous: page > 1 ? page - 1 : null,
      last: lastPage,
      total: total,
      data: data,
    ).response();
  }
}
