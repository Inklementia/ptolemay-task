// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:testtask/config/enums/menu_enum.dart';
import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  List<Menu> list = [
    Menu.home,
    Menu.page1,
    Menu.page2,
    Menu.page3,
  ];

  void changePage(int index) {
    emit(HomeState(currentIndex: index));
  }
}
