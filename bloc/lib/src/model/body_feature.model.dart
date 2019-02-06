import 'package:meta/meta.dart';
import 'package:jam_dart_models/models.dart';

@immutable
class BodyFeature extends Data {
  final String bodyFrame;
  final String hairLength;
  final String hairType;
  final String hairThickness;
  final String hairColor;
  final bool hasDandruff;
  final bool hasGreyHairs;
  final String skinTone;
  final String skinType;

  const BodyFeature({
    String key,
    this.bodyFrame,
    this.hairLength,
    this.hairType,
    this.hairThickness,
    this.hairColor,
    this.hasDandruff,
    this.hasGreyHairs,
    this.skinTone,
    this.skinType,
  }) : super(key: key);

  BodyFeature.fromMap({String key, Map<String, dynamic> map})
      : assert(map != null),
        this.bodyFrame = map['bodyFrame'],
        this.hairLength = map['hairLength'],
        this.hairType = map['hairType'],
        this.hairThickness = map['hairThickness'],
        this.hairColor = map['hairColor'],
        this.hasDandruff = map['hasDandruff'],
        this.hasGreyHairs = map['hasGreyHairs'],
        this.skinTone = map['skinTone'],
        this.skinType = map['skinType'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'bodyFrame': this.bodyFrame,
      'hairLength': this.hairLength,
      'hairType': this.hairType,
      'hairThickness': this.hairThickness,
      'hairColor': this.hairColor,
      'hasDandruff': this.hasDandruff,
      'hasGreyHairs': this.hasGreyHairs,
      'skinTone': this.skinTone,
      'skinType': this.skinType,
    };
  }

  BodyFeature copyWith({
    String key,
    String bodyFrame,
    String hairLength,
    String hairType,
    String hairThickness,
    String hairColor,
    bool hasDandruff,
    bool hasGreyHairs,
    String skinTone,
    String skinType,
  }) {
    return BodyFeature(
      key: key ?? this.key,
      bodyFrame: bodyFrame ?? this.bodyFrame,
      hairLength: hairLength ?? this.hairLength,
      hairType: hairType ?? this.hairType,
      hairThickness: hairThickness ?? this.hairThickness,
      hairColor: hairColor ?? this.hairColor,
      hasDandruff: hasDandruff ?? this.hasDandruff,
      hasGreyHairs: hasGreyHairs ?? this.hasGreyHairs,
      skinTone: skinTone ?? this.skinTone,
      skinType: skinType ?? this.skinType,
    );
  }

  bool isEquivalentTo(BodyFeature other) =>
      other != null &&
      this.bodyFrame == other.bodyFrame &&
      this.hairLength == other.hairLength &&
      this.hairType == other.hairType &&
      this.hairThickness == other.hairThickness &&
      this.hairColor == other.hairColor &&
      this.hasDandruff == other.hasDandruff &&
      this.hasGreyHairs == other.hasGreyHairs &&
      this.skinTone == other.skinTone &&
      this.skinType == other.skinType;
}
