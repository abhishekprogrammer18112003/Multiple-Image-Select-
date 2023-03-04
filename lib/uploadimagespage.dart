import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/mainpage.dart';

class UploadImagesPage extends StatefulWidget {
  UploadImagesPage({Key? key}) : super(key: key);

  @override
  _UploadImagesPageState createState() => _UploadImagesPageState();
}

class _UploadImagesPageState extends State<UploadImagesPage> {
  List<File> _selectedImages = [];

  @override
  void initState() {
    super.initState();
    _loadSelectedImages();
  }

  Future<void> _pickImages() async {
    final picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage();
    if (pickedFiles != null) {
      List<File> selectedImages = [];
      for (var pickedFile in pickedFiles) {
        final image = File(pickedFile.path);
        selectedImages.add(image);
      }
      setState(() {
        _selectedImages.addAll(selectedImages);
      });
      _saveSelectedImages();
    }
  }

  Future<void> _loadSelectedImages() async {
    final prefs = await SharedPreferences.getInstance();
    final savedImagesJson = prefs.getString('selectedImages');
    if (savedImagesJson != null) {
      final savedImages = jsonDecode(savedImagesJson);
      setState(() {
        _selectedImages =
            savedImages.map<File>((imagePath) => File(imagePath)).toList();
      });
    }
  }

  Future<void> _saveSelectedImages() async {
    final prefs = await SharedPreferences.getInstance();
    final savedImages =
        _selectedImages.map<String>((image) => image.path).toList();
    final savedImagesJson = jsonEncode(savedImages);
    await prefs.setString('selectedImages', savedImagesJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.tra,
        title: Text('Image List'),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: _selectedImages.length,
          itemBuilder: (context, index) {
            final imagePath = _selectedImages[index];
            return Image.file(
              File(imagePath.path),
              fit: BoxFit.cover,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImages,
        child: Icon(Icons.add),
      ),
    );
  }
}
