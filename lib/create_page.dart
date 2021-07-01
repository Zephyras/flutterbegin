import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditngController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  @override
  void dispose() {
    textEditngController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _picker == null ? Text('No Image') : Image.file(_picker.getImage(source: )),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력하세요.'),
          controller: textEditngController,
        ),
      ],
    );
  }

  Future _getImage() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _picker = File(pickedFile.path);
      } else {
        print('No Image Selected');
      }
    });
  }
}
