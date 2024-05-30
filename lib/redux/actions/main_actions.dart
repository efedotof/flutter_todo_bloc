import 'package:todo_redux/redux/actions/base_action.dart';

sealed class BaseMainAction implements BaseAction {
  const BaseMainAction();
}

class AddItems implements BaseMainAction {
  final String title;
  final String description;

  const AddItems({required this.title, required this.description});
}


class RemoveItemAction {
  final int id;
  const RemoveItemAction({required this.id});
}