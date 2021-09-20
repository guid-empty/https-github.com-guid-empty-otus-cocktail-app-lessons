import 'package:cocktail/core/models.dart';
import 'package:cocktail/network/model/network_request_state.dart';
import 'package:cocktail/network/model/network_request_state_enum.dart';
import 'package:cocktail/ui/common/app_colors.dart';
import 'package:cocktail/ui/common/app_string_const.dart';
import 'package:cocktail/ui/widgets/filterPage/results_grid/category_results_grid.dart';
import 'package:flutter/material.dart';

class CategoryFilterResultsWidget extends StatefulWidget {  
  final Stream<NetworkRequestState> _stream;

  CategoryFilterResultsWidget(
    this._stream
  );

  @override
  _CategoryFilterResultsWidgetState createState() => _CategoryFilterResultsWidgetState();
}

class _CategoryFilterResultsWidgetState extends State<CategoryFilterResultsWidget> {
  List<CocktailDefinition> _results = List.empty();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: widget._stream,
        initialData:  NetworkRequestState.emptyRequestState,
        builder: (context, requestState) {
          Widget buildedWidget;
          NetworkRequestState currentState = requestState.data as NetworkRequestState;

          switch (currentState.state) {
            case NetworkRequestStateEnum.inProgressState:
              buildedWidget = _buildInProgressStateWidget();
              break;

            case NetworkRequestStateEnum.inErrorState:
              buildedWidget = _buildInErrorStateWidget();
              break;

            case NetworkRequestStateEnum.inSuccess:
              _results = currentState.coctails;
              buildedWidget = _renderResults();
              break;

            case NetworkRequestStateEnum.inIdleState:
              buildedWidget = _renderResults();
              break;

            default:
          }
          return buildedWidget;          
        }                        
      ),
    );
  }

  Widget _buildInProgressStateWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/loading_icon.png"),
          const Text(
            AppStringConst.searchTextLabel,
            style: TextStyle(color: AppColors.categoryItemColor),          
          )
        ]
      )
    );
  }

  Widget _buildInErrorStateWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppStringConst.errorTextLabel,
            style: TextStyle(color: AppColors.categoryItemColor),          
          )
        ]
      )
    );
  }

  Widget _renderResults() {
    if (_results.isEmpty) return Spacer();
    else return CategoryResultsGrid(_results);
  }
}