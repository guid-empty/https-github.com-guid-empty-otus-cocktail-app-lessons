import 'dart:async';
import 'package:cocktail/core/models.dart';
import 'package:cocktail/network/model/network_request_state.dart';
import 'package:cocktail/network/model/network_request_state_enum.dart';

class CategoryFilterRequest {
  static final NetworkRequestState _inProgress = NetworkRequestState(
    NetworkRequestStateEnum.inProgressState,     
    List.empty()
  );

  static final NetworkRequestState _errorResult = NetworkRequestState(
    NetworkRequestStateEnum.inErrorState,     
    List.empty()
  ); 

  final StreamController _streamController = StreamController<NetworkRequestState>.broadcast();
  final _repository = AsyncCocktailRepository();

  Stream<NetworkRequestState> get requestUpdates => _streamController.stream.asBroadcastStream();

  void requestCocktailsByCategory(CocktailCategory category) {
    _streamController.add(_inProgress);

    _repository.fetchCocktailsByCocktailCategory(category)
      .then(_processData)
      .catchError(_processError);    
  }

  void _processData(Iterable<CocktailDefinition> cocktails) {
    _streamController.add(NetworkRequestState(
      NetworkRequestStateEnum.inSuccess, 
        cocktails.toList()
      )
    );
  }

  void _processError(Object error) {    
    _streamController.add(_errorResult);
  }
}