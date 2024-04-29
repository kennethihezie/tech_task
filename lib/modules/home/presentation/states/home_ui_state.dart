import 'package:equatable/equatable.dart';
import 'package:luvit/modules/home/data/model/profile.dart';

class HomeUiState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final List<Profile> profiles;

  const HomeUiState({this.isLoading = false, this.hasError = false, this.profiles = const []});

  HomeUiState copyWith({bool? isLoading, bool? hasError, List<Profile>? profiles}) => HomeUiState(
    isLoading: isLoading ?? this.isLoading,
    hasError: hasError ?? this.hasError,
    profiles: profiles ?? this.profiles
  );

  @override
  List<Object?> get props => [isLoading, hasError, profiles];
}