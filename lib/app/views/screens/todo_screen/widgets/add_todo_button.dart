import 'package:flutter/material.dart';
import 'package:to_do_app/app/models/todo_model.dart';
import 'package:to_do_app/l10n/generated/common_localizations.dart';

class AddTodoButton extends StatelessWidget {
  final Function(TodoModel model) _onAddPress;

  const AddTodoButton({
    super.key,
    required Function(TodoModel model) onAddPress,
  }) : _onAddPress = onAddPress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: CommonLocalizations.of(context).addButton,
      child: const Icon(Icons.add),
      onPressed: () => showDialog(
        context: context,
        builder: (_) => _AddTodoDialog(callback: _onAddPress),
      ),
    );
  }
}

class _AddTodoDialog extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();
  final Function(TodoModel model) _callback;

  _AddTodoDialog({required Function(TodoModel model) callback})
      : _callback = callback;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(CommonLocalizations.of(context).title_addItem),
      content: TextField(
        controller: _textFieldController,
        decoration: InputDecoration(
            hintText: CommonLocalizations.of(context).hint_addItem),
      ),
      actions: [
        TextButton(
          onPressed: _createTodo(context),
          child: Text(CommonLocalizations.of(context).button_addItem),
        ),
      ],
    );
  }

  void Function() _createTodo(BuildContext context) => () {
        final input = _textFieldController.text.trim();
        if (input.isEmpty) {
          return;
        }

        Navigator.of(context).pop();
        _callback(TodoModel(title: input));
      };
}
