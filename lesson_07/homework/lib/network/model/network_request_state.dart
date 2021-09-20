

import 'package:cocktail/core/models.dart';
import 'package:cocktail/network/model/network_request_state_enum.dart';

class NetworkRequestState {
  static final NetworkRequestState emptyRequestState = NetworkRequestState(
    NetworkRequestStateEnum.inIdleState,    
    List.empty()
  );

  final NetworkRequestStateEnum state;  
  final List<CocktailDefinition> coctails;

  NetworkRequestState(
    this.state,       
    this.coctails
  );
}