import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum UserRole {
  bod('bod'),
  admin('admin'),
  teamLeader('team_leader'),
  sales('sales'),
  referral('referral');

  const UserRole(this.value);
  final String value;
}
