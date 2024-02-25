import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dummy_state.dart';
part 'dummy_cubit.freezed.dart';

class DummyCubit extends Cubit<DummyState> {
  DummyCubit(super.initState);

  void hello() {
    debugPrint('hello world');
  }
}
