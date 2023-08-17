class GetFactNumberState {
  int? uiStateNumber;
  GetFactNumberState({
    required this.uiStateNumber,
  });

  GetFactNumberState copyWith({
    int? uiStateNumber,
  }) {
    uiStateNumber;
    return GetFactNumberState(
      uiStateNumber: uiStateNumber ?? this.uiStateNumber,
    );
  }
}
