class Roller {
  final int? ratio;
  final int? length;

  const Roller({
    this.ratio,
    this.length,
  });

  Roller copyWith({
    int? ratio,
    int? length,
  }) {
    return Roller(
      ratio: ratio ?? this.ratio,
      length: length ?? this.length,
    );
  }
}