import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filter_text_indicator_state.dart';

class FilterTextIndicatorCubit extends Cubit<FilterTextIndicatorState> {
  FilterTextIndicatorCubit() : super(FilterTextIndicatorInitial());
}
