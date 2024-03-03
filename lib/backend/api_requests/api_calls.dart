import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailpedido Group Code

class BFEmailpedidoGroup {
  static String baseUrl = 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailpedidoCall emailpedidoCall = EmailpedidoCall();
}

class EmailpedidoCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "sk-bf-4f427d46-fde5-4afc-9782-1bf1f400d82b": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailpedido',
      apiUrl:
          '${BFEmailpedidoGroup.baseUrl}/email?templateId=db2tnI4a1todnlnFgPC2&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailpedido Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
