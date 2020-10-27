import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldSample extends StatefulWidget {
  @override
  _TextFieldSampleState createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  final _firstNameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  final _firstNameFocusNode = FocusNode();
  final _surnameFocusNode = FocusNode();
  final _phoneNumberFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

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
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.all(16),
        children: [
          _buildFirstNameField(_firstNameFocusNode, _surnameFocusNode),
          _buildFamilyNameNameField(_surnameFocusNode, _phoneNumberFocusNode),
          _buildPhoneField(_phoneNumberFocusNode, _passwordFocusNode),
          _buildPasswordField(_passwordFocusNode, null),
        ],
      ),
    );
  }

  Widget _buildFirstNameField(FocusNode node, FocusNode nextFocus) {
    return TextField(
      focusNode: node,
      controller: _firstNameController,
      onChanged: (value) {

      },
      onSubmitted: (value) {
        print('onSubmitted');
        nextFocus.requestFocus();
      },
      onEditingComplete: () {

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(),
      autofillHints: [AutofillHints.name],
      keyboardType: TextInputType.name,
    );
  }

  Widget _buildFamilyNameNameField(FocusNode node, FocusNode nextFocus) {
    return TextField(
      focusNode: node,
      controller: _surnameController,
      onChanged: (value) {},
      onSubmitted: (value) {
        print('onSubmitted');
        nextFocus.requestFocus();

      },
      onEditingComplete: () {
        print('onEditingComplete');
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-z,A-Z]'))
      ],
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(),
      autofillHints: [AutofillHints.familyName],
      smartDashesType: SmartDashesType.enabled,
      keyboardType: TextInputType.number,
    );
  }

  Widget _buildPhoneField(FocusNode node, FocusNode nextFocus) {
    return TextField(
      focusNode: node,
      controller: _phoneNumberController,
      onChanged: (value) {
        if (value.length == 10) {
          nextFocus.requestFocus();
        }
      },
      onSubmitted: (value) {
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
    return TextField(
      focusNode: node,
      controller: _passwordController,
      onChanged: (value) {},
      onSubmitted: (value) {
        //FocusNode().requestFocus();
        node.unfocus();
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
}
