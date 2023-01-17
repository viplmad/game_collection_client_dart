# game_collection_client.api.DLCFinishApi

## Load the API package
```dart
import 'package:game_collection_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDlcFinish**](DLCFinishApi.md#deletedlcfinish) | **DELETE** /api/v1/dlcs/{id}/finishes | 
[**getDlcFinishes**](DLCFinishApi.md#getdlcfinishes) | **GET** /api/v1/dlcs/{id}/finishes | 
[**getFirstDlcFinish**](DLCFinishApi.md#getfirstdlcfinish) | **GET** /api/v1/dlcs/{id}/finishes/first | 
[**getFirstFinishedDlcs**](DLCFinishApi.md#getfirstfinisheddlcs) | **POST** /api/v1/dlcs/finished/first | 
[**getLastFinishedDlcs**](DLCFinishApi.md#getlastfinisheddlcs) | **POST** /api/v1/dlcs/finished/last | 
[**postDlcFinish**](DLCFinishApi.md#postdlcfinish) | **POST** /api/v1/dlcs/{id}/finishes | 


# **deleteDlcFinish**
> deleteDlcFinish(id, body)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCFinishApi();
final id = 56; // int | DLC id
final body = String(); // String | DLC finish date to be deleted

try {
    api_instance.deleteDlcFinish(id, body);
} catch (e) {
    print('Exception when calling DLCFinishApi->deleteDlcFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **body** | **String**| DLC finish date to be deleted | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDlcFinishes**
> List<String> getDlcFinishes(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCFinishApi();
final id = 56; // int | DLC id

try {
    final result = api_instance.getDlcFinishes(id);
    print(result);
} catch (e) {
    print('Exception when calling DLCFinishApi->getDlcFinishes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

**List<String>**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstDlcFinish**
> String getFirstDlcFinish(id)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCFinishApi();
final id = 56; // int | DLC id

try {
    final result = api_instance.getFirstDlcFinish(id);
    print(result);
} catch (e) {
    print('Exception when calling DLCFinishApi->getFirstDlcFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 

### Return type

**String**

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstFinishedDlcs**
> DLCWithFinishPageResult getFirstFinishedDlcs(searchDTO, startDate, endDate, q)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCFinishApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 
final q = q_example; // String | 

try {
    final result = api_instance.getFirstFinishedDlcs(searchDTO, startDate, endDate, q);
    print(result);
} catch (e) {
    print('Exception when calling DLCFinishApi->getFirstFinishedDlcs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **startDate** | **String**|  | [optional] 
 **endDate** | **String**|  | [optional] 
 **q** | **String**|  | [optional] 

### Return type

[**DLCWithFinishPageResult**](DLCWithFinishPageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastFinishedDlcs**
> DLCWithFinishPageResult getLastFinishedDlcs(searchDTO, startDate, endDate, q)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCFinishApi();
final searchDTO = SearchDTO(); // SearchDTO | Query
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 
final q = q_example; // String | 

try {
    final result = api_instance.getLastFinishedDlcs(searchDTO, startDate, endDate, q);
    print(result);
} catch (e) {
    print('Exception when calling DLCFinishApi->getLastFinishedDlcs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchDTO** | [**SearchDTO**](SearchDTO.md)| Query | 
 **startDate** | **String**|  | [optional] 
 **endDate** | **String**|  | [optional] 
 **q** | **String**|  | [optional] 

### Return type

[**DLCWithFinishPageResult**](DLCWithFinishPageResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDlcFinish**
> postDlcFinish(id, body)





### Example
```dart
import 'package:game_collection_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearer_token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer_token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DLCFinishApi();
final id = 56; // int | DLC id
final body = String(); // String | DLC finish date to be added

try {
    api_instance.postDlcFinish(id, body);
} catch (e) {
    print('Exception when calling DLCFinishApi->postDlcFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| DLC id | 
 **body** | **String**| DLC finish date to be added | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
