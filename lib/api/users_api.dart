//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of n2t.game_collection.client;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'PUT /api/v1/myself/change-password' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] currentPassword (required):
  ///
  /// * [String] newPassword (required):
  Future<Response> changePasswordWithHttpInfo(String currentPassword, String newPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/myself/change-password';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (currentPassword != null) {
      formParams[r'current_password'] = parameterToString(currentPassword);
    }
    if (newPassword != null) {
      formParams[r'new_password'] = parameterToString(newPassword);
    }

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
  /// * [String] currentPassword (required):
  ///
  /// * [String] newPassword (required):
  Future<void> changePassword(String currentPassword, String newPassword,) async {
    final response = await changePasswordWithHttpInfo(currentPassword, newPassword,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> deleteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
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
  ///   User id
  Future<void> deleteUser(String id,) async {
    final response = await deleteUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/users/{id}/demote' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> demoteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/demote'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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
  ///   User id
  Future<void> demoteUser(String id,) async {
    final response = await demoteUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/myself' operation and returns the [Response].
  Future<Response> getCurrentUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/myself';

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

  Future<UserDTO> getCurrentUser() async {
    final response = await getCurrentUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDTO',) as UserDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'GET /api/v1/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> getUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
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
  ///   User id
  Future<UserDTO> getUser(String id,) async {
    final response = await getUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDTO',) as UserDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/users/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SearchDTO] searchDTO (required):
  ///   Query
  ///
  /// * [String] q:
  Future<Response> getUsersWithHttpInfo(SearchDTO searchDTO, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/list';

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
  Future<UserPageResult> getUsers(SearchDTO searchDTO, { String? q, }) async {
    final response = await getUsersWithHttpInfo(searchDTO,  q: q, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserPageResult',) as UserPageResult;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'POST /api/v1/users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] password (required):
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be created
  Future<Response> postUserWithHttpInfo(String password, NewUserDTO newUserDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users';

    // ignore: prefer_final_locals
    Object? postBody = newUserDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'password', password));

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
  /// * [String] password (required):
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be created
  Future<UserDTO> postUser(String password, NewUserDTO newUserDTO,) async {
    final response = await postUserWithHttpInfo(password, newUserDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDTO',) as UserDTO;

    }
    throw ApiException.unreachable();
  }

  /// Performs an HTTP 'PUT /api/v1/users/{id}/promote' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  Future<Response> promoteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/promote'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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
  ///   User id
  Future<void> promoteUser(String id,) async {
    final response = await promoteUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be updated
  Future<Response> putUserWithHttpInfo(String id, NewUserDTO newUserDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = newUserDTO;

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
  ///   User id
  ///
  /// * [NewUserDTO] newUserDTO (required):
  ///   User to be updated
  Future<void> putUser(String id, NewUserDTO newUserDTO,) async {
    final response = await putUserWithHttpInfo(id, newUserDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
