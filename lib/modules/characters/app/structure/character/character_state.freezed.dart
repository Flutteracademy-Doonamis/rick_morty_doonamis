// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterState {
  List<CharacterDTO> get character => throw _privateConstructorUsedError;
  List<CharacterDTO> get favCharacters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call({List<CharacterDTO> character, List<CharacterDTO> favCharacters});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? favCharacters = null,
  }) {
    return _then(_value.copyWith(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
      favCharacters: null == favCharacters
          ? _value.favCharacters
          : favCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterStateCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$_CharacterStateCopyWith(
          _$_CharacterState value, $Res Function(_$_CharacterState) then) =
      __$$_CharacterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterDTO> character, List<CharacterDTO> favCharacters});
}

/// @nodoc
class __$$_CharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$_CharacterState>
    implements _$$_CharacterStateCopyWith<$Res> {
  __$$_CharacterStateCopyWithImpl(
      _$_CharacterState _value, $Res Function(_$_CharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? favCharacters = null,
  }) {
    return _then(_$_CharacterState(
      character: null == character
          ? _value._character
          : character // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
      favCharacters: null == favCharacters
          ? _value._favCharacters
          : favCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterDTO>,
    ));
  }
}

/// @nodoc

class _$_CharacterState implements _CharacterState {
  const _$_CharacterState(
      {final List<CharacterDTO> character = const [],
      final List<CharacterDTO> favCharacters = const []})
      : _character = character,
        _favCharacters = favCharacters;

  final List<CharacterDTO> _character;
  @override
  @JsonKey()
  List<CharacterDTO> get character {
    if (_character is EqualUnmodifiableListView) return _character;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_character);
  }

  final List<CharacterDTO> _favCharacters;
  @override
  @JsonKey()
  List<CharacterDTO> get favCharacters {
    if (_favCharacters is EqualUnmodifiableListView) return _favCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favCharacters);
  }

  @override
  String toString() {
    return 'CharacterState(character: $character, favCharacters: $favCharacters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterState &&
            const DeepCollectionEquality()
                .equals(other._character, _character) &&
            const DeepCollectionEquality()
                .equals(other._favCharacters, _favCharacters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_character),
      const DeepCollectionEquality().hash(_favCharacters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterStateCopyWith<_$_CharacterState> get copyWith =>
      __$$_CharacterStateCopyWithImpl<_$_CharacterState>(this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  const factory _CharacterState(
      {final List<CharacterDTO> character,
      final List<CharacterDTO> favCharacters}) = _$_CharacterState;

  @override
  List<CharacterDTO> get character;
  @override
  List<CharacterDTO> get favCharacters;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterStateCopyWith<_$_CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}
