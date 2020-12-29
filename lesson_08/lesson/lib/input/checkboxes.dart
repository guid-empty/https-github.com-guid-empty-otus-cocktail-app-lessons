import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CheckBoxSample extends StatefulWidget {
  @override
  _CheckBoxSampleState createState() => _CheckBoxSampleState();
}

class _CheckBoxSampleState extends State<CheckBoxSample> {
  bool _checkBoxesValue = false;
  bool _checkBoxeTristateValue = false;

  bool _switchValue = false;

  final _radioValues = List.generate(5, (index) => 'Item ${index}');
  String _radioGroupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.runtimeType.toString()),
        ),
        body: ListView(children: [
          ..._checkBoxSection(context),
          ..._switchSection(context),
          ..._radioButtonSection(context)
        ]));
  }

  List<Widget> _checkBoxSection(BuildContext context) {
    return [
      //Checkbox
      _buildSection(
          context,
          'Checkbox',
          Row(
            children: [
              Checkbox(
                onChanged: _onCheckboxesValueChanged,
                value: _checkBoxesValue,
              ),
              Checkbox(
                activeColor: Colors.green,
                onChanged: _onCheckboxTristateValueChanged,
                tristate: true,
                value: _checkBoxeTristateValue,
              ),
            ],
          )),
      //CheckboxListTile
      _buildSection(
        context,
        'CheckboxListTile',
        Column(
          children: [
            CheckboxListTile(
                title: Text('Title'),
                subtitle: Text('Subtitle'),
                secondary: Icon(Icons.check_circle_outlined),
                value: _checkBoxesValue,
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: _onCheckboxesValueChanged),
            CheckboxListTile(
                title: Text('Tristate'),
                value: _checkBoxeTristateValue,
                tristate: true,
                onChanged: _onCheckboxTristateValueChanged),
            CheckboxListTile(
                title: Text('ControlAffinity leading'),
                secondary: Icon(Icons.sort),
                selected: _checkBoxesValue,
                controlAffinity: ListTileControlAffinity.leading,
                value: _checkBoxesValue,
                onChanged: _onCheckboxesValueChanged),
          ],
        ),
      ),
    ];
  }

  void _onCheckboxesValueChanged(bool value) {
    setState(() {
      _checkBoxesValue = value;
    });
  }

  void _onCheckboxTristateValueChanged(bool value) {
    setState(() {
      _checkBoxeTristateValue = value;
    });
  }

  List<Widget> _switchSection(BuildContext context) {
    return [
      //Switch
      _buildSection(
        context,
        'Switch',
        Row(
          children: [
            CupertinoSwitch(
                value: _switchValue, onChanged: _onSwitchValueChanged),
            Switch(value: _switchValue, onChanged: _onSwitchValueChanged),
          ],
        ),
      ),
      //
      _buildSection(
        context,
        'SwitchListTile',
        Column(
          children: [
            SwitchListTile(
                title: Text('Simple'),
                value: _switchValue,
                onChanged: _onSwitchValueChanged),
            SwitchListTile.adaptive(
                title: Text('Adaptive'),
                value: _switchValue,
                onChanged: _onSwitchValueChanged),
            SwitchListTile(
                title: Text('Custom'),
                value: _switchValue,
                inactiveThumbColor: Colors.yellow,
                activeTrackColor: Colors.blue,
                activeColor: Colors.red,
                activeThumbImage: NetworkImage(
                    'https://lists.gnu.org/archive/html/emacs-devel/2015-10/pngR9b4lzUy39.png'),
                inactiveThumbImage: NetworkImage(
                    'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                onChanged: _onSwitchValueChanged),
            SwitchListTile(
                title: Text('ControlAffinity leading'),
                secondary: Icon(Icons.sort),
                selected: _switchValue,
                controlAffinity: ListTileControlAffinity.leading,
                value: _switchValue,
                onChanged: _onSwitchValueChanged),
          ],
        ),
      ),
    ];
  }

  void _onSwitchValueChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  List<Widget> _radioButtonSection(BuildContext context) {

    return [
      _buildSection(
        context,
        'RadioListTile',
        Column(
          children: _radioValues
              .map(
                (item) => RadioListTile(
                  title: Text(item),
                  selected: _radioGroupValue == item,
                  groupValue: _radioGroupValue,
                  value: item,
                  onChanged: (item) {
                    setState(() {
                      _radioGroupValue = item;
                    });
                  },
                ),
              )
              .toList(),
        ),
      ),
    ];
  }

  Widget _buildSection(BuildContext context, String title, Widget child) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 16),
          child,
          Divider(),
        ],
      ),
    );
  }
}
