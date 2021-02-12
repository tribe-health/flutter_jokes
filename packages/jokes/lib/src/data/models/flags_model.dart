import 'package:json_annotation/json_annotation.dart';

import '../../domain/domain.dart' show Flags;

part 'flags_model.g.dart';

@JsonSerializable()
class FlagsModel implements Flags {
  FlagsModel({
    this.explicit,
    this.nsfw,
    this.political,
    this.racist,
    this.religious,
    this.sexist,
  });

  factory FlagsModel.fromJson(Map<String, dynamic> json) =>
      _$FlagsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FlagsModelToJson(this);

  @override
  final bool explicit;

  @override
  final bool nsfw;

  @override
  final bool political;

  @override
  final bool racist;

  @override
  final bool religious;

  @override
  final bool sexist;

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}
