class ApiConstants {
  static const baseUrl = "https://www.amiiboapi.com/api/";
  static const apiToken = "token";

  static const Map<String, dynamic> headers = {
    'other-header': "hidden-key",
    'api-token': apiToken,
  };
}
