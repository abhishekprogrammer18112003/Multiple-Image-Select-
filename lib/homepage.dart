import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/bottomnavigationbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<File> _imageList = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _loadSavedImages();
  // }

  // Future<void> _selectImages() async {
  //   final picker = ImagePicker();
  //   final pickedFiles = await picker.pickMultiImage();
  //   if (pickedFiles != null) {
  //     setState(() {
  //       _imageList = pickedFiles.map((file) => File(file.path)).toList();
  //     });
  //     _saveImages();
  //   }
  // }

  // Future<void> _loadSavedImages() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final savedPaths = prefs.getStringList('imagePaths') ?? [];
  //   setState(() {
  //     _imageList = savedPaths.map((path) => File(path)).toList();
  //   });
  // }

  // Future<void> _saveImages() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final imagePaths = _imageList.map((file) => file.path).toList();
  //   prefs.setStringList('imagePaths', imagePaths);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Image Page'),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  // Widget _buildImageList() {
  //   return Wrap(
  //     spacing: 8,
  //     runSpacing: 8,
  //     children: _imageList.map((file) {
  //       return SizedBox(
  //         width: 100,
  //         height: 100,
  //         child: Image.file(file, fit: BoxFit.cover),
  //       );
  //     }).toList(),
  //   );
  // }
}
