// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginUser value)?  loginUser,TResult Function( _NavigateToSignUp value)?  navigateToSignUp,TResult Function( _NavigateToForgetPassword value)?  navigateToForgetPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginUser() when loginUser != null:
return loginUser(_that);case _NavigateToSignUp() when navigateToSignUp != null:
return navigateToSignUp(_that);case _NavigateToForgetPassword() when navigateToForgetPassword != null:
return navigateToForgetPassword(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginUser value)  loginUser,required TResult Function( _NavigateToSignUp value)  navigateToSignUp,required TResult Function( _NavigateToForgetPassword value)  navigateToForgetPassword,}){
final _that = this;
switch (_that) {
case _LoginUser():
return loginUser(_that);case _NavigateToSignUp():
return navigateToSignUp(_that);case _NavigateToForgetPassword():
return navigateToForgetPassword(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginUser value)?  loginUser,TResult? Function( _NavigateToSignUp value)?  navigateToSignUp,TResult? Function( _NavigateToForgetPassword value)?  navigateToForgetPassword,}){
final _that = this;
switch (_that) {
case _LoginUser() when loginUser != null:
return loginUser(_that);case _NavigateToSignUp() when navigateToSignUp != null:
return navigateToSignUp(_that);case _NavigateToForgetPassword() when navigateToForgetPassword != null:
return navigateToForgetPassword(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  loginUser,TResult Function()?  navigateToSignUp,TResult Function()?  navigateToForgetPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginUser() when loginUser != null:
return loginUser(_that.email,_that.password);case _NavigateToSignUp() when navigateToSignUp != null:
return navigateToSignUp();case _NavigateToForgetPassword() when navigateToForgetPassword != null:
return navigateToForgetPassword();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  loginUser,required TResult Function()  navigateToSignUp,required TResult Function()  navigateToForgetPassword,}) {final _that = this;
switch (_that) {
case _LoginUser():
return loginUser(_that.email,_that.password);case _NavigateToSignUp():
return navigateToSignUp();case _NavigateToForgetPassword():
return navigateToForgetPassword();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  loginUser,TResult? Function()?  navigateToSignUp,TResult? Function()?  navigateToForgetPassword,}) {final _that = this;
switch (_that) {
case _LoginUser() when loginUser != null:
return loginUser(_that.email,_that.password);case _NavigateToSignUp() when navigateToSignUp != null:
return navigateToSignUp();case _NavigateToForgetPassword() when navigateToForgetPassword != null:
return navigateToForgetPassword();case _:
  return null;

}
}

}

/// @nodoc


class _LoginUser implements LoginEvent {
   _LoginUser(this.email, this.password);
  

 final  String email;
 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginUserCopyWith<_LoginUser> get copyWith => __$LoginUserCopyWithImpl<_LoginUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginUser&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginEvent.loginUser(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginUserCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$LoginUserCopyWith(_LoginUser value, $Res Function(_LoginUser) _then) = __$LoginUserCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginUserCopyWithImpl<$Res>
    implements _$LoginUserCopyWith<$Res> {
  __$LoginUserCopyWithImpl(this._self, this._then);

  final _LoginUser _self;
  final $Res Function(_LoginUser) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginUser(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NavigateToSignUp implements LoginEvent {
   _NavigateToSignUp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateToSignUp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.navigateToSignUp()';
}


}




/// @nodoc


class _NavigateToForgetPassword implements LoginEvent {
   _NavigateToForgetPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateToForgetPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.navigateToForgetPassword()';
}


}




/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialState value)?  initial,TResult Function( _LoadingState value)?  loading,TResult Function( _SuccessState value)?  success,TResult Function( _ErrorState value)?  error,TResult Function( _NavigateToSignUpState value)?  navigateToSingUp,TResult Function( _NavigateToForgetPasswordState value)?  navigateToForgetPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial(_that);case _LoadingState() when loading != null:
return loading(_that);case _SuccessState() when success != null:
return success(_that);case _ErrorState() when error != null:
return error(_that);case _NavigateToSignUpState() when navigateToSingUp != null:
return navigateToSingUp(_that);case _NavigateToForgetPasswordState() when navigateToForgetPassword != null:
return navigateToForgetPassword(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialState value)  initial,required TResult Function( _LoadingState value)  loading,required TResult Function( _SuccessState value)  success,required TResult Function( _ErrorState value)  error,required TResult Function( _NavigateToSignUpState value)  navigateToSingUp,required TResult Function( _NavigateToForgetPasswordState value)  navigateToForgetPassword,}){
final _that = this;
switch (_that) {
case _InitialState():
return initial(_that);case _LoadingState():
return loading(_that);case _SuccessState():
return success(_that);case _ErrorState():
return error(_that);case _NavigateToSignUpState():
return navigateToSingUp(_that);case _NavigateToForgetPasswordState():
return navigateToForgetPassword(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialState value)?  initial,TResult? Function( _LoadingState value)?  loading,TResult? Function( _SuccessState value)?  success,TResult? Function( _ErrorState value)?  error,TResult? Function( _NavigateToSignUpState value)?  navigateToSingUp,TResult? Function( _NavigateToForgetPasswordState value)?  navigateToForgetPassword,}){
final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial(_that);case _LoadingState() when loading != null:
return loading(_that);case _SuccessState() when success != null:
return success(_that);case _ErrorState() when error != null:
return error(_that);case _NavigateToSignUpState() when navigateToSingUp != null:
return navigateToSingUp(_that);case _NavigateToForgetPasswordState() when navigateToForgetPassword != null:
return navigateToForgetPassword(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  success,TResult Function( String message)?  error,TResult Function()?  navigateToSingUp,TResult Function()?  navigateToForgetPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial();case _LoadingState() when loading != null:
return loading();case _SuccessState() when success != null:
return success(_that.message);case _ErrorState() when error != null:
return error(_that.message);case _NavigateToSignUpState() when navigateToSingUp != null:
return navigateToSingUp();case _NavigateToForgetPasswordState() when navigateToForgetPassword != null:
return navigateToForgetPassword();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  success,required TResult Function( String message)  error,required TResult Function()  navigateToSingUp,required TResult Function()  navigateToForgetPassword,}) {final _that = this;
switch (_that) {
case _InitialState():
return initial();case _LoadingState():
return loading();case _SuccessState():
return success(_that.message);case _ErrorState():
return error(_that.message);case _NavigateToSignUpState():
return navigateToSingUp();case _NavigateToForgetPasswordState():
return navigateToForgetPassword();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  success,TResult? Function( String message)?  error,TResult? Function()?  navigateToSingUp,TResult? Function()?  navigateToForgetPassword,}) {final _that = this;
switch (_that) {
case _InitialState() when initial != null:
return initial();case _LoadingState() when loading != null:
return loading();case _SuccessState() when success != null:
return success(_that.message);case _ErrorState() when error != null:
return error(_that.message);case _NavigateToSignUpState() when navigateToSingUp != null:
return navigateToSingUp();case _NavigateToForgetPasswordState() when navigateToForgetPassword != null:
return navigateToForgetPassword();case _:
  return null;

}
}

}

/// @nodoc


class _InitialState implements LoginState {
   _InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class _LoadingState implements LoginState {
   _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class _SuccessState implements LoginState {
   _SuccessState(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessStateCopyWith<_SuccessState> get copyWith => __$SuccessStateCopyWithImpl<_SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$SuccessStateCopyWith(_SuccessState value, $Res Function(_SuccessState) _then) = __$SuccessStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessStateCopyWithImpl<$Res>
    implements _$SuccessStateCopyWith<$Res> {
  __$SuccessStateCopyWithImpl(this._self, this._then);

  final _SuccessState _self;
  final $Res Function(_SuccessState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SuccessState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ErrorState implements LoginState {
   _ErrorState(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorStateCopyWith<_ErrorState> get copyWith => __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(_ErrorState value, $Res Function(_ErrorState) _then) = __$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(this._self, this._then);

  final _ErrorState _self;
  final $Res Function(_ErrorState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NavigateToSignUpState implements LoginState {
   _NavigateToSignUpState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateToSignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.navigateToSingUp()';
}


}




/// @nodoc


class _NavigateToForgetPasswordState implements LoginState {
   _NavigateToForgetPasswordState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateToForgetPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.navigateToForgetPassword()';
}


}




// dart format on
