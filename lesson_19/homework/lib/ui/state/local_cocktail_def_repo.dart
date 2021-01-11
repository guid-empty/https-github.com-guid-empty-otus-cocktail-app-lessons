
import 'dart:io';
import 'dart:convert';
import 'package:cocktail_app/core/src/dto/cocktail_definition_dto.dart';
import 'package:cocktail_app/core/src/model/cocktail.dart';
import 'package:cocktail_app/core/src/model/cocktail_category.dart';
import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:path_provider/path_provider.dart';

class LocalCocktailDefinitionsRepository{
  File _file;

  persist(Map<String, CocktailDefinition> cocktails) async{
    await _setUp();
    Map<String, CocktailDefinitionDto> data = convertToDTO(cocktails);
    var jsonContent = json.encode(data);
    _file.writeAsString(jsonContent,  flush: true);
  }

  Future<Map<String, CocktailDefinition>> load() async{
    await _setUp();
    final currentDataString = await _file.readAsString();
    try {
      var res = json.decode(currentDataString) as Map;
      return res.map((k,v) => MapEntry(k, fromDTO(CocktailDefinitionDto.fromJson(v))));
    } catch (e) {
      print('Resetting file, incorrect format');
      _file.writeAsString('{}', flush: true);
      return load();
    }
  }

  Future _setUp() async {
    if(_file != null) return;
    Directory directory = await getApplicationDocumentsDirectory();
    _file = File(directory.path + 'favorites.json');
    if(!_file.existsSync()){
      _file.create(recursive: true);
      _file.writeAsString('{}', flush: true);
    }
  }


  static void createCocktailDefinitionsFromDTO(Iterable<CocktailDefinitionDto> dtos, List<CocktailDefinition> result) {
    for (final dto in dtos) {
      result.add(CocktailDefinition(
          id: dto.idDrink,
          name: dto.strDrink,
          drinkThumbUrl: dto.strDrinkThumb,
          category: dto.strCategory == null ? null : CocktailCategory.parseByName(dto.strCategory)
      ));
    }
  }

  static CocktailDefinition createCocktailDefinitionFromCocktail(Cocktail cocktail) {
    final cocktailDefinition = CocktailDefinition(
        id: cocktail.id,
        name: cocktail.name,
        drinkThumbUrl: cocktail.drinkThumbUrl,
        category: cocktail.category
    );
    return cocktailDefinition;
  }

  Map<String, CocktailDefinitionDto> convertToDTO(Map<String, CocktailDefinition> cocktails) {
    return cocktails.map((key, value) => MapEntry(key, toDTO(value)));
  }

  CocktailDefinitionDto toDTO(CocktailDefinition cocktail) {
    return CocktailDefinitionDto(cocktail.name, cocktail.drinkThumbUrl, cocktail.id, cocktail.category.name);
  }

  CocktailDefinition fromDTO(CocktailDefinitionDto dto) {
    return CocktailDefinition(id: dto.idDrink, name: dto.strDrink, drinkThumbUrl: dto.strDrinkThumb, category: CocktailCategory.parseByName(dto.strCategory));
  }
}