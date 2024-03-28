// ignore_for_file: must_be_immutable

part of 'lostitems_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Lostitems widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LostitemsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Lostitems widget is first created.
class LostitemsInitialEvent extends LostitemsEvent {
  @override
  List<Object?> get props => [];
}
