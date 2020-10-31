

import 'package:cocktail/core/models.dart';

class NetworkRequestState {
  static const int inIdleState = 0;
  static const int inProgressState = 1;
  static const int inSuccess = 2;
  static const int inErrorState = 3;  

  static final NetworkRequestState emptyRequestState = NetworkRequestState(
    inIdleState,    
    List.empty()
  );

  final int state;  
  final List<CocktailDefinition> coctails;

  NetworkRequestState(
    this.state,       
    this.coctails
  );
}