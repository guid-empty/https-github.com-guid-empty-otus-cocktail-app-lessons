import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldSample extends StatefulWidget {
  @override
  _TextFormFieldSampleState createState() => _TextFormFieldSampleState();
}

class _TextFormFieldSampleState extends State<TextFormFieldSample> {
  final _firstNameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  final _firstNameFocusNode = FocusNode();
  final _surnameFocusNode = FocusNode();
  final _phoneNumberFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // не забыть вызвать dispose() !!!
    _firstNameFocusNode.dispose();
    _surnameFocusNode.dispose();
    _phoneNumberFocusNode.dispose();
    _passwordFocusNode.dispose();
    _firstNameController.dispose();
    _surnameController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            _buildFirstNameField(_firstNameFocusNode, _surnameFocusNode),
            _buildFamilyNameNameField(_surnameFocusNode, _phoneNumberFocusNode),
            _buildPhoneField(_phoneNumberFocusNode, _passwordFocusNode),
            _buildPasswordField(_passwordFocusNode, null),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstNameField(FocusNode node, FocusNode nextFocus) {
    return TextFormField(
      focusNode: node,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _firstNameController,
      onChanged: (value) {},
      onFieldSubmitted: (value) {
        nextFocus.requestFocus();
      },
      validator: _emptyValidator,
      onEditingComplete: () {},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(),
      autofillHints: [AutofillHints.name],
      keyboardType: TextInputType.name,
    );
  }

  Widget _buildFamilyNameNameField(FocusNode node, FocusNode nextFocus) {
    return TextFormField(
      focusNode: node,
      controller: _surnameController,
      onChanged: (value) {},
      validator: _emptyValidator,
      onFieldSubmitted: (value) {
        nextFocus.requestFocus();
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-z,A-Z]'))
      ],
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(),
      autofillHints: [AutofillHints.familyName],
      smartDashesType: SmartDashesType.enabled,
      keyboardType: TextInputType.name,
    );
  }

  Widget _buildPhoneField(FocusNode node, FocusNode nextFocus) {
    return TextFormField(
      focusNode: node,
      controller: _phoneNumberController,
      validator: _emptyValidator,
      onChanged: (value) {
        if (value.length == 10) {
          nextFocus.requestFocus();
        }
      },
      onFieldSubmitted: (value) {
        nextFocus.requestFocus();
      },
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        TextInputFormatter.withFunction((oldValue, newValue) {
          if (newValue.text.contains('6')) {
            return newValue.copyWith(text: newValue.text.replaceAll('6', '*'));
          }
          return newValue;
        })
      ],
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixText: '+7'),
      autofillHints: [AutofillHints.name],
      keyboardType: TextInputType.phone,
    );
  }

  Widget _buildPasswordField(FocusNode node, FocusNode nextFocus) {
    return TextFormField(
      focusNode: node,
      controller: _passwordController,
      validator: _emptyValidator,
      onChanged: (value) {},
      onFieldSubmitted: (value) {
        node.unfocus();
        _checkFields();
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(),
      obscuringCharacter: '*',
      obscureText: true,
      autofillHints: [AutofillHints.name],
      smartDashesType: SmartDashesType.enabled,
      keyboardType: TextInputType.visiblePassword,
    );
  }

  void _checkFields() {
    if (_formKey.currentState.validate()) {
      print('Success!');
    }
    print('Failure!');
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
