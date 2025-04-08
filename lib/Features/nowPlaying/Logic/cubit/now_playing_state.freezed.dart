// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NowPlayingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MovieModel> movies, List<MovieModel> filteredMovies)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(List<MovieModel> lastMovies) noSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<MovieModel> lastMovies)? noSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(List<MovieModel> lastMovies)? noSearchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingStateInitial value) initial,
    required TResult Function(NowPlayingStateLoading value) loading,
    required TResult Function(NowPlayingStateLoaded value) loaded,
    required TResult Function(NowPlayingStateError value) error,
    required TResult Function(NowPlayingStateNoSearchResult value)
        noSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingStateInitial value)? initial,
    TResult? Function(NowPlayingStateLoading value)? loading,
    TResult? Function(NowPlayingStateLoaded value)? loaded,
    TResult? Function(NowPlayingStateError value)? error,
    TResult? Function(NowPlayingStateNoSearchResult value)? noSearchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingStateInitial value)? initial,
    TResult Function(NowPlayingStateLoading value)? loading,
    TResult Function(NowPlayingStateLoaded value)? loaded,
    TResult Function(NowPlayingStateError value)? error,
    TResult Function(NowPlayingStateNoSearchResult value)? noSearchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingStateCopyWith<$Res> {
  factory $NowPlayingStateCopyWith(
          NowPlayingState value, $Res Function(NowPlayingState) then) =
      _$NowPlayingStateCopyWithImpl<$Res, NowPlayingState>;
}

/// @nodoc
class _$NowPlayingStateCopyWithImpl<$Res, $Val extends NowPlayingState>
    implements $NowPlayingStateCopyWith<$Res> {
  _$NowPlayingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NowPlayingStateInitialImplCopyWith<$Res> {
  factory _$$NowPlayingStateInitialImplCopyWith(
          _$NowPlayingStateInitialImpl value,
          $Res Function(_$NowPlayingStateInitialImpl) then) =
      __$$NowPlayingStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NowPlayingStateInitialImplCopyWithImpl<$Res>
    extends _$NowPlayingStateCopyWithImpl<$Res, _$NowPlayingStateInitialImpl>
    implements _$$NowPlayingStateInitialImplCopyWith<$Res> {
  __$$NowPlayingStateInitialImplCopyWithImpl(
      _$NowPlayingStateInitialImpl _value,
      $Res Function(_$NowPlayingStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NowPlayingStateInitialImpl implements NowPlayingStateInitial {
  const _$NowPlayingStateInitialImpl();

  @override
  String toString() {
    return 'NowPlayingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MovieModel> movies, List<MovieModel> filteredMovies)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(List<MovieModel> lastMovies) noSearchResult,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<MovieModel> lastMovies)? noSearchResult,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(List<MovieModel> lastMovies)? noSearchResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingStateInitial value) initial,
    required TResult Function(NowPlayingStateLoading value) loading,
    required TResult Function(NowPlayingStateLoaded value) loaded,
    required TResult Function(NowPlayingStateError value) error,
    required TResult Function(NowPlayingStateNoSearchResult value)
        noSearchResult,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingStateInitial value)? initial,
    TResult? Function(NowPlayingStateLoading value)? loading,
    TResult? Function(NowPlayingStateLoaded value)? loaded,
    TResult? Function(NowPlayingStateError value)? error,
    TResult? Function(NowPlayingStateNoSearchResult value)? noSearchResult,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingStateInitial value)? initial,
    TResult Function(NowPlayingStateLoading value)? loading,
    TResult Function(NowPlayingStateLoaded value)? loaded,
    TResult Function(NowPlayingStateError value)? error,
    TResult Function(NowPlayingStateNoSearchResult value)? noSearchResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NowPlayingStateInitial implements NowPlayingState {
  const factory NowPlayingStateInitial() = _$NowPlayingStateInitialImpl;
}

/// @nodoc
abstract class _$$NowPlayingStateLoadingImplCopyWith<$Res> {
  factory _$$NowPlayingStateLoadingImplCopyWith(
          _$NowPlayingStateLoadingImpl value,
          $Res Function(_$NowPlayingStateLoadingImpl) then) =
      __$$NowPlayingStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NowPlayingStateLoadingImplCopyWithImpl<$Res>
    extends _$NowPlayingStateCopyWithImpl<$Res, _$NowPlayingStateLoadingImpl>
    implements _$$NowPlayingStateLoadingImplCopyWith<$Res> {
  __$$NowPlayingStateLoadingImplCopyWithImpl(
      _$NowPlayingStateLoadingImpl _value,
      $Res Function(_$NowPlayingStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NowPlayingStateLoadingImpl implements NowPlayingStateLoading {
  const _$NowPlayingStateLoadingImpl();

  @override
  String toString() {
    return 'NowPlayingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MovieModel> movies, List<MovieModel> filteredMovies)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(List<MovieModel> lastMovies) noSearchResult,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<MovieModel> lastMovies)? noSearchResult,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(List<MovieModel> lastMovies)? noSearchResult,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingStateInitial value) initial,
    required TResult Function(NowPlayingStateLoading value) loading,
    required TResult Function(NowPlayingStateLoaded value) loaded,
    required TResult Function(NowPlayingStateError value) error,
    required TResult Function(NowPlayingStateNoSearchResult value)
        noSearchResult,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingStateInitial value)? initial,
    TResult? Function(NowPlayingStateLoading value)? loading,
    TResult? Function(NowPlayingStateLoaded value)? loaded,
    TResult? Function(NowPlayingStateError value)? error,
    TResult? Function(NowPlayingStateNoSearchResult value)? noSearchResult,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingStateInitial value)? initial,
    TResult Function(NowPlayingStateLoading value)? loading,
    TResult Function(NowPlayingStateLoaded value)? loaded,
    TResult Function(NowPlayingStateError value)? error,
    TResult Function(NowPlayingStateNoSearchResult value)? noSearchResult,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NowPlayingStateLoading implements NowPlayingState {
  const factory NowPlayingStateLoading() = _$NowPlayingStateLoadingImpl;
}

/// @nodoc
abstract class _$$NowPlayingStateLoadedImplCopyWith<$Res> {
  factory _$$NowPlayingStateLoadedImplCopyWith(
          _$NowPlayingStateLoadedImpl value,
          $Res Function(_$NowPlayingStateLoadedImpl) then) =
      __$$NowPlayingStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieModel> movies, List<MovieModel> filteredMovies});
}

/// @nodoc
class __$$NowPlayingStateLoadedImplCopyWithImpl<$Res>
    extends _$NowPlayingStateCopyWithImpl<$Res, _$NowPlayingStateLoadedImpl>
    implements _$$NowPlayingStateLoadedImplCopyWith<$Res> {
  __$$NowPlayingStateLoadedImplCopyWithImpl(_$NowPlayingStateLoadedImpl _value,
      $Res Function(_$NowPlayingStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? filteredMovies = null,
  }) {
    return _then(_$NowPlayingStateLoadedImpl(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      filteredMovies: null == filteredMovies
          ? _value._filteredMovies
          : filteredMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc

class _$NowPlayingStateLoadedImpl implements NowPlayingStateLoaded {
  const _$NowPlayingStateLoadedImpl(
      {required final List<MovieModel> movies,
      final List<MovieModel> filteredMovies = const []})
      : _movies = movies,
        _filteredMovies = filteredMovies;

  final List<MovieModel> _movies;
  @override
  List<MovieModel> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  final List<MovieModel> _filteredMovies;
  @override
  @JsonKey()
  List<MovieModel> get filteredMovies {
    if (_filteredMovies is EqualUnmodifiableListView) return _filteredMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredMovies);
  }

  @override
  String toString() {
    return 'NowPlayingState.loaded(movies: $movies, filteredMovies: $filteredMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality()
                .equals(other._filteredMovies, _filteredMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_filteredMovies));

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingStateLoadedImplCopyWith<_$NowPlayingStateLoadedImpl>
      get copyWith => __$$NowPlayingStateLoadedImplCopyWithImpl<
          _$NowPlayingStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MovieModel> movies, List<MovieModel> filteredMovies)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(List<MovieModel> lastMovies) noSearchResult,
  }) {
    return loaded(movies, filteredMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<MovieModel> lastMovies)? noSearchResult,
  }) {
    return loaded?.call(movies, filteredMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(List<MovieModel> lastMovies)? noSearchResult,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies, filteredMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingStateInitial value) initial,
    required TResult Function(NowPlayingStateLoading value) loading,
    required TResult Function(NowPlayingStateLoaded value) loaded,
    required TResult Function(NowPlayingStateError value) error,
    required TResult Function(NowPlayingStateNoSearchResult value)
        noSearchResult,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingStateInitial value)? initial,
    TResult? Function(NowPlayingStateLoading value)? loading,
    TResult? Function(NowPlayingStateLoaded value)? loaded,
    TResult? Function(NowPlayingStateError value)? error,
    TResult? Function(NowPlayingStateNoSearchResult value)? noSearchResult,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingStateInitial value)? initial,
    TResult Function(NowPlayingStateLoading value)? loading,
    TResult Function(NowPlayingStateLoaded value)? loaded,
    TResult Function(NowPlayingStateError value)? error,
    TResult Function(NowPlayingStateNoSearchResult value)? noSearchResult,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NowPlayingStateLoaded implements NowPlayingState {
  const factory NowPlayingStateLoaded(
      {required final List<MovieModel> movies,
      final List<MovieModel> filteredMovies}) = _$NowPlayingStateLoadedImpl;

  List<MovieModel> get movies;
  List<MovieModel> get filteredMovies;

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingStateLoadedImplCopyWith<_$NowPlayingStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NowPlayingStateErrorImplCopyWith<$Res> {
  factory _$$NowPlayingStateErrorImplCopyWith(_$NowPlayingStateErrorImpl value,
          $Res Function(_$NowPlayingStateErrorImpl) then) =
      __$$NowPlayingStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NowPlayingStateErrorImplCopyWithImpl<$Res>
    extends _$NowPlayingStateCopyWithImpl<$Res, _$NowPlayingStateErrorImpl>
    implements _$$NowPlayingStateErrorImplCopyWith<$Res> {
  __$$NowPlayingStateErrorImplCopyWithImpl(_$NowPlayingStateErrorImpl _value,
      $Res Function(_$NowPlayingStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NowPlayingStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NowPlayingStateErrorImpl implements NowPlayingStateError {
  const _$NowPlayingStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NowPlayingState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingStateErrorImplCopyWith<_$NowPlayingStateErrorImpl>
      get copyWith =>
          __$$NowPlayingStateErrorImplCopyWithImpl<_$NowPlayingStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MovieModel> movies, List<MovieModel> filteredMovies)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(List<MovieModel> lastMovies) noSearchResult,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<MovieModel> lastMovies)? noSearchResult,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(List<MovieModel> lastMovies)? noSearchResult,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingStateInitial value) initial,
    required TResult Function(NowPlayingStateLoading value) loading,
    required TResult Function(NowPlayingStateLoaded value) loaded,
    required TResult Function(NowPlayingStateError value) error,
    required TResult Function(NowPlayingStateNoSearchResult value)
        noSearchResult,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingStateInitial value)? initial,
    TResult? Function(NowPlayingStateLoading value)? loading,
    TResult? Function(NowPlayingStateLoaded value)? loaded,
    TResult? Function(NowPlayingStateError value)? error,
    TResult? Function(NowPlayingStateNoSearchResult value)? noSearchResult,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingStateInitial value)? initial,
    TResult Function(NowPlayingStateLoading value)? loading,
    TResult Function(NowPlayingStateLoaded value)? loaded,
    TResult Function(NowPlayingStateError value)? error,
    TResult Function(NowPlayingStateNoSearchResult value)? noSearchResult,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NowPlayingStateError implements NowPlayingState {
  const factory NowPlayingStateError(final String message) =
      _$NowPlayingStateErrorImpl;

  String get message;

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingStateErrorImplCopyWith<_$NowPlayingStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NowPlayingStateNoSearchResultImplCopyWith<$Res> {
  factory _$$NowPlayingStateNoSearchResultImplCopyWith(
          _$NowPlayingStateNoSearchResultImpl value,
          $Res Function(_$NowPlayingStateNoSearchResultImpl) then) =
      __$$NowPlayingStateNoSearchResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieModel> lastMovies});
}

/// @nodoc
class __$$NowPlayingStateNoSearchResultImplCopyWithImpl<$Res>
    extends _$NowPlayingStateCopyWithImpl<$Res,
        _$NowPlayingStateNoSearchResultImpl>
    implements _$$NowPlayingStateNoSearchResultImplCopyWith<$Res> {
  __$$NowPlayingStateNoSearchResultImplCopyWithImpl(
      _$NowPlayingStateNoSearchResultImpl _value,
      $Res Function(_$NowPlayingStateNoSearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMovies = null,
  }) {
    return _then(_$NowPlayingStateNoSearchResultImpl(
      lastMovies: null == lastMovies
          ? _value._lastMovies
          : lastMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc

class _$NowPlayingStateNoSearchResultImpl
    implements NowPlayingStateNoSearchResult {
  const _$NowPlayingStateNoSearchResultImpl(
      {required final List<MovieModel> lastMovies})
      : _lastMovies = lastMovies;

  final List<MovieModel> _lastMovies;
  @override
  List<MovieModel> get lastMovies {
    if (_lastMovies is EqualUnmodifiableListView) return _lastMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastMovies);
  }

  @override
  String toString() {
    return 'NowPlayingState.noSearchResult(lastMovies: $lastMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingStateNoSearchResultImpl &&
            const DeepCollectionEquality()
                .equals(other._lastMovies, _lastMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lastMovies));

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingStateNoSearchResultImplCopyWith<
          _$NowPlayingStateNoSearchResultImpl>
      get copyWith => __$$NowPlayingStateNoSearchResultImplCopyWithImpl<
          _$NowPlayingStateNoSearchResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MovieModel> movies, List<MovieModel> filteredMovies)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(List<MovieModel> lastMovies) noSearchResult,
  }) {
    return noSearchResult(lastMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<MovieModel> lastMovies)? noSearchResult,
  }) {
    return noSearchResult?.call(lastMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> movies, List<MovieModel> filteredMovies)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(List<MovieModel> lastMovies)? noSearchResult,
    required TResult orElse(),
  }) {
    if (noSearchResult != null) {
      return noSearchResult(lastMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NowPlayingStateInitial value) initial,
    required TResult Function(NowPlayingStateLoading value) loading,
    required TResult Function(NowPlayingStateLoaded value) loaded,
    required TResult Function(NowPlayingStateError value) error,
    required TResult Function(NowPlayingStateNoSearchResult value)
        noSearchResult,
  }) {
    return noSearchResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NowPlayingStateInitial value)? initial,
    TResult? Function(NowPlayingStateLoading value)? loading,
    TResult? Function(NowPlayingStateLoaded value)? loaded,
    TResult? Function(NowPlayingStateError value)? error,
    TResult? Function(NowPlayingStateNoSearchResult value)? noSearchResult,
  }) {
    return noSearchResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NowPlayingStateInitial value)? initial,
    TResult Function(NowPlayingStateLoading value)? loading,
    TResult Function(NowPlayingStateLoaded value)? loaded,
    TResult Function(NowPlayingStateError value)? error,
    TResult Function(NowPlayingStateNoSearchResult value)? noSearchResult,
    required TResult orElse(),
  }) {
    if (noSearchResult != null) {
      return noSearchResult(this);
    }
    return orElse();
  }
}

abstract class NowPlayingStateNoSearchResult implements NowPlayingState {
  const factory NowPlayingStateNoSearchResult(
          {required final List<MovieModel> lastMovies}) =
      _$NowPlayingStateNoSearchResultImpl;

  List<MovieModel> get lastMovies;

  /// Create a copy of NowPlayingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingStateNoSearchResultImplCopyWith<
          _$NowPlayingStateNoSearchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
