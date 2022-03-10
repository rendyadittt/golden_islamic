import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'iqro_event.dart';
part 'iqro_state.dart';

class IqroBloc extends Bloc<IqroEvent, IqroState> {
  IqroBloc() : super(IqroInitial()) {
    on<IqroEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
