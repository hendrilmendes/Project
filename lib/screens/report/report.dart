import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final TextEditingController _descriptionController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = pickedImage;
    });
  }

  Future<void> _submitReport() async {
    if (_image != null && _descriptionController.text.isNotEmpty) {
      // Upload da imagem para o Firebase Storage
      final storageRef = _storage.ref().child('reports/${_image!.name}');
      await storageRef.putFile(File(_image!.path));
      final imageUrl = await storageRef.getDownloadURL();

      // Salvar a denúncia no Firestore
      await _firestore.collection('reports').add({
        'description': _descriptionController.text,
        'imageUrl': imageUrl,
        'timestamp': Timestamp.now(),
      });

      // Limpar os campos após o envio
      setState(() {
        _descriptionController.clear();
        _image = null;
      });

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Denúncia enviada com sucesso!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, adicione uma descrição e uma foto')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enviar Denúncia')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Descrição'),
            ),
            SizedBox(height: 20),
            _image != null
                ? Image.file(File(_image!.path), height: 200)
                : Text('Nenhuma imagem selecionada'),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Tirar Foto'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitReport,
              child: Text('Enviar Denúncia'),
            ),
          ],
        ),
      ),
    );
  }
}
