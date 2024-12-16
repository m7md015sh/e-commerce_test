class PlaceSuggestionModel{
  late String placeId;
  late String description;

  PlaceSuggestionModel.fromJson(Map<String,dynamic>json){
    placeId=json["place_id"];
    placeId=json["description"];
  }
}