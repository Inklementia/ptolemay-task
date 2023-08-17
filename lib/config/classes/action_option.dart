// Project imports:
import 'package:testtask/config/enums/action_type_enum.dart';

class ActionOption {
  //
  final ActionType type;

  final Function() onTap;

  ActionOption({
    required this.type,
    required this.onTap,
  });
}
