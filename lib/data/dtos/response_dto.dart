class ResponseDTO {
  final int code; // 서버에서 요청 성공 여부를 응답할 때 사용되는 변수
  final String mag; // 서버에서 응답 시 보내는 메세지를 담아두는 변수
  String? token; // 헤더로 던진 토큰 값을 담아두는 변수
  dynamic data;

  ResponseDTO(
    this.code,
    this.mag,
    this.data,
  ); // 서버에서 응답한 데이터를 담아두는 변수

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : code = json["code"],
        mag = json["mag"],
        data = json["data"];
}
