class Roller {
  final int? ratio;
  final int? length;
  final int? distanceBetweenMeasurePoints;
  final List<RollerData>? data;

  const Roller({
    this.ratio,
    this.length,
    this.distanceBetweenMeasurePoints,
    this.data,
  });

  Roller copyWith({
    int? ratio,
    int? length,
    int? distanceBetweenMeasurePoints,
    List<RollerData>? data,
  }) {
    return Roller(
      ratio: ratio ?? this.ratio,
      length: length ?? this.length,
      distanceBetweenMeasurePoints:
          distanceBetweenMeasurePoints ?? this.distanceBetweenMeasurePoints,
      data: data ?? this.data,
    );
  }

  @override
  String toString() {
    return 'Roller{data: $data}';
  }
}

class RollerData {
  final int distance;
  final double height;

  RollerData({
    required this.distance,
    required this.height,
  });

  @override
  String toString() {
    return 'RollerData{distance: $distance, height: $height}';
  }
}
