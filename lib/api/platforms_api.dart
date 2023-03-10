//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;


class PlatformsApi {
  PlatformsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /api/v1/platforms/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<Response> deletePlatformWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<void> deletePlatform(String id,) async {
    final response = await deletePlatformWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/platforms/{id}/icon' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<Response> deletePlatformIconWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/icon'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<void> deletePlatformIcon(String id,) async {
    final response = await deletePlatformIconWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/dlcs/{id}/platforms' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<Response> getDlcPlatformsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dlcs/{id}/platforms'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   DLC id
  Future<List<PlatformAvailableDTO>> getDlcPlatforms(String id,) async {
    final response = await getDlcPlatformsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PlatformAvailableDTO>') as List)
        .cast<PlatformAvailableDTO>()
        .toList();

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'GET /api/v1/games/{id}/platforms' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<Response> getGamePlatformsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/games/{id}/platforms'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Game id
  Future<List<PlatformAvailableDTO>> getGamePlatforms(String id,) async {
    final response = await getGamePlatformsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PlatformAvailableDTO>') as List)
        .cast<PlatformAvailableDTO>()
        .toList();

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'GET /api/v1/platforms/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<Response> getPlatformWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  Future<PlatformDTO> getPlatform(String id,) async {
    final response = await getPlatformWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlatformDTO',) as PlatformDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/platforms/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getPlatformsWithHttpInfo(SearchDTO searchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/list';

    // ignore: prefer_final_locals
    Object? postBody = searchDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<PlatformPageResult> getPlatforms(SearchDTO searchDTO, { String? q, }) async {
    final response = await getPlatformsWithHttpInfo(searchDTO,  q: q, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlatformPageResult',) as PlatformPageResult;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/platforms' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewPlatformDTO] newPlatformDTO (required):
  ///   Platform to be createad
  Future<Response> postPlatformWithHttpInfo(NewPlatformDTO newPlatformDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms';

    // ignore: prefer_final_locals
    Object? postBody = newPlatformDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [NewPlatformDTO] newPlatformDTO (required):
  ///   Platform to be createad
  Future<PlatformDTO> postPlatform(NewPlatformDTO newPlatformDTO,) async {
    final response = await postPlatformWithHttpInfo(newPlatformDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlatformDTO',) as PlatformDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/platforms/{id}/icon' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  ///
  /// * [MultipartFile] file (required):
  Future<Response> postPlatformIconWithHttpInfo(String id, MultipartFile file,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/icon'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  ///
  /// * [MultipartFile] file (required):
  Future<void> postPlatformIcon(String id, MultipartFile file,) async {
    final response = await postPlatformIconWithHttpInfo(id, file,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/platforms/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  ///
  /// * [NewPlatformDTO] newPlatformDTO (required):
  ///   Platform to be updated
  Future<Response> putPlatformWithHttpInfo(String id, NewPlatformDTO newPlatformDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newPlatformDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  ///
  /// * [NewPlatformDTO] newPlatformDTO (required):
  ///   Platform to be updated
  Future<void> putPlatform(String id, NewPlatformDTO newPlatformDTO,) async {
    final response = await putPlatformWithHttpInfo(id, newPlatformDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/platforms/{id}/icon' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  ///
  /// * [String] body (required):
  ///   New platform filename
  Future<Response> putPlatformIconWithHttpInfo(String id, String body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/platforms/{id}/icon'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Platform id
  ///
  /// * [String] body (required):
  ///   New platform filename
  Future<void> putPlatformIcon(String id, String body,) async {
    final response = await putPlatformIconWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
