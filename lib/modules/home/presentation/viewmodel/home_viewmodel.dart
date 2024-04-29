import 'package:flutter/material.dart';
import 'package:luvit/common/base_view_model/base_view_model.dart';
import 'package:luvit/common/di/locator.dart';
import 'package:luvit/modules/home/domain/usecase/get_local_profile_usecase.dart';
import 'package:luvit/modules/home/presentation/states/home_ui_state.dart';

class HomeViewModel extends BaseViewModel {
  final GetLocalProfileUseCase _getLocalProfileUseCase;
  HomeViewModel({GetLocalProfileUseCase? getLocalProfileUseCase}): _getLocalProfileUseCase = getLocalProfileUseCase ?? locator.get() {
    getLocalProfiles();
  }

  late final AnimationController animationController;


  HomeUiState _uiState = const HomeUiState();
  HomeUiState get uiState => _uiState;
  set uiState(HomeUiState value) {
    _uiState = value;
    notifyListeners();
  }

  void getLocalProfiles(){
    uiState = uiState.copyWith(isLoading: true);

    final profiles = _getLocalProfileUseCase.invoke();

    uiState = uiState.copyWith(isLoading: false, profiles: profiles);
  }

  void getOnlineProfile(){
    //await FirebaseData().changeDataInFirebase();
    // await DatabaseService().readAllData('data');
  }


  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }




  init(TickerProvider vsync){

    animationController = AnimationController(duration: const Duration(milliseconds: 500), vsync: vsync);
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reset();
        currentIndex = 0;
      }
    });
  }

  void swipeLeft() {
    if (currentIndex > 0) {
      currentIndex -= 1;
    } else {
      animationController.forward();
    }
  }

  void swipeRight() {
    if (currentIndex < uiState.profiles.length - 1) {
      currentIndex += 1;
    } else {
      animationController.forward();
    }
  }

  void onTapUp({required BuildContext context, required TapUpDetails details}){
    final cardWHeight = MediaQuery.of(context).size.height;
    final cardWidth = MediaQuery.of(context).size.width;
    final tapPositionHeight = details.localPosition.dy;
    final tapPositionWidth = details.localPosition.dx;
    final middlePointWidth = cardWidth / 2;
    final middlePointHeight = cardWHeight / 2;

    if (tapPositionHeight < middlePointHeight && tapPositionWidth > middlePointWidth) {
      swipeRight();
    } else if (tapPositionHeight < middlePointHeight && tapPositionWidth < middlePointWidth) {
      swipeLeft();
    }
  }

  void onItemDrag(int val){
    final profiles = uiState.profiles;
    profiles.removeAt(val);

    uiState = uiState.copyWith(profiles: [...profiles]);

    currentIndex = calculateNearbyIndex(uiState.profiles, currentIndex, val);
  }

  int calculateNearbyIndex(List<dynamic> items, int currentIndex, int removedIndex) {
    if (currentIndex >= items.length) {
      return items.length - 1;
    } else if (currentIndex <= 0) {
      return 0;
    } else {
      return currentIndex - 1;
    }
  }
}