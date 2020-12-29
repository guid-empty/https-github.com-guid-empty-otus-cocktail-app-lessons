import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldSample2 extends StatefulWidget {
  @override
  _TextFormFieldSample2State createState() => _TextFormFieldSample2State();
}

class _TextFormFieldSample2State extends State<TextFormFieldSample2> {
  final _firstNameController = TextEditingController();

  final _firstNameFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  bool _checkAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.runtimeType.toString()),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.all(16),
          children: [
            _buildFirstNameField(_firstNameFocusNode),
            const SizedBox(
              height: 24,
            ),
            _formCheckbox(),
            const SizedBox(
              height: 24,
            ),
            TextButton(onPressed: _checkFields, child: Text('Готово'))
          ],
        ),
      ),
    );
  }

  Widget _buildFirstNameField(FocusNode node) {
    return TextFormField(
      focusNode: node,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _firstNameController,
      validator: _emptyValidator,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(labelText: 'Имя'),
      autofillHints: [AutofillHints.name],
      keyboardType: TextInputType.name,
    );
  }

  Widget _formCheckbox() {
    return FormField<bool>(
      validator: (value) {
        return value == true ? null : 'Нужно обязательно со всем согласиться';
      },
      initialValue: _checkAll,
      builder: (state) => CheckboxListTile(
          value: _checkAll,
          title: Text('На все согласен'),
          subtitle: state.hasError
              ? Text(
                  state.errorText,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                )
              : null,
          onChanged: (value) {
            setState(() {
              _checkAll = value;
              state.setValue(_checkAll);
              state.validate();
            });
          }),
    );
  }

  void _checkFields() {
    if (_formKey.currentState.validate()) {
      print('Success!');
    } else {
      print('Failure!');
    }
  }

  String _emptyValidator(String value) {
    if (value?.isNotEmpty != true) {
      //возвращаем текст ошибки
      return 'Поле обязательно';
    }
    //null означает что ошибок нет
    return null;
  }
}
