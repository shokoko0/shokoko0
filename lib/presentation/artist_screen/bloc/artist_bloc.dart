import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/thumbnailssection_item_model.dart';
import 'package:shoko_tech_s_application1/presentation/artist_screen/models/artist_model.dart';
part 'artist_event.dart';
part 'artist_state.dart';

/// A bloc that manages the state of a Artist according to the event that is dispatched to it.
class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  ArtistBloc(ArtistState initialState) : super(initialState) {
    on<ArtistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArtistInitialEvent event,
    Emitter<ArtistState> emit,
  ) async {
    emit(state.copyWith(
        artistModelObj: state.artistModelObj?.copyWith(
            thumbnailssectionItemList: fillThumbnailssectionItemList())));
  }

  List<ThumbnailssectionItemModel> fillThumbnailssectionItemList() {
    return [
      ThumbnailssectionItemModel(
          urgentSiege: ImageConstant.imgThumbnails,
          urgentSiege1: "Urgent Siege",
          damnedAnthem: "Damned Anthem"),
      ThumbnailssectionItemModel(
          urgentSiege: ImageConstant.imgThumbnails181x159,
          urgentSiege1: "Urgent Siege",
          damnedAnthem: "Damned Anthem")
    ];
  }
}
