import 'package:cryptotrack/models/crypto_model.dart';
import 'package:equatable/equatable.dart';

enum CryptoState { initial, success, failure }

sealed class CryptoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchCryptoCurrencies extends CryptoEvent {}

final class CryptoListState extends Equatable {
  const CryptoListState({
    this.status = CryptoState.initial,
    this.currencies = const <Cryptocurrency>[],
  });

  final CryptoState status;
  final List<Cryptocurrency> currencies;

  CryptoListState copyWith({
    CryptoState? status,
    List<Cryptocurrency>? currencies,
    bool? hasReachedMax,
  }) {
    return CryptoListState(
      status: status ?? this.status,
      currencies: currencies ?? this.currencies,
    );
  }

  @override
  String toString() {
    return '''Crypto currencies { status: $status,  currencies: ${currencies.length} }''';
  }

  @override
  List<Object> get props => [status, currencies];
}
