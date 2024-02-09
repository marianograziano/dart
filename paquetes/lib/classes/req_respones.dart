// To parse this JSON data, do
//
//     final reqResponseRespuesta = reqResponseRespuestaFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/classes/persona.dart';
import 'package:paquetes/classes/support.dart';

ReqResponseRespuesta reqResponseRespuestaFromJson(String str) => ReqResponseRespuesta.fromJson(json.decode(str));

String reqResponseRespuestaToJson(ReqResponseRespuesta data) => json.encode(data.toJson());

class ReqResponseRespuesta {
    int page;
    int perPage;
    int total;
    int totalPages;
    List<Persona> data;
    Support support;

    ReqResponseRespuesta({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    factory ReqResponseRespuesta.fromJson(Map<String, dynamic> json) => ReqResponseRespuesta(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support: Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
    };
}

