// ignore_for_file: must_be_immutable

part of 'viewitem_pageone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewitemPageone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewitemPageoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ViewitemPageone widget is first created.
class ViewitemPageoneInitialEvent extends ViewitemPageoneEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/auth/login API.
class CreateLoginEvent extends ViewitemPageoneEvent {
  CreateLoginEvent();

  @override
  List<Object?> get props => [];
}
