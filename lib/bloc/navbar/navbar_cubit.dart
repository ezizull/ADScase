import 'package:bloc/bloc.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarState(index: 0));

  // change index for change icon
  void onchange(int indx) => emit(NavbarState(index: indx));
}
