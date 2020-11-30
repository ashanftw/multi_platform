import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:path/path.dart';

class MultipleImg extends StatefulWidget {
  @override
  _MultipleImgState createState() => _MultipleImgState();
}

class _MultipleImgState extends State<MultipleImg> {
  File _image;
  List<File> imgList = [];

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imgList.add(image);
      print(imgList);
    }
  }

  Future uploadmultipleimage(List images) async {
    var uri = Uri.parse(
        "http://192.168.1.102/projects/smart_loan/index.php/Main/call_api/Login/image_test");
    http.MultipartRequest request = new http.MultipartRequest('POST', uri);
    //request.headers[''] = '';
    request.fields['user_id'] = '10';
    request.fields['post_details'] = 'dfsfdsfsd';
    //multipartFile = new http.MultipartFile("imagefile", stream, length, filename: basename(imageFile.path));
    List<http.MultipartFile> newList = [];
    for (int i = 0; i < images.length; i++) {
      File imageFile = images[i];
      var stream =
          new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
      var length = await imageFile.length();
      var multipartFile = new http.MultipartFile("imagefile[]", stream, length,
          filename: basename(imageFile.path));
      newList.add(multipartFile);
    }
    request.files.addAll(newList);
    var response = await request.send();
    if (response.statusCode == 200) {
      print("Image Uploaded");
    } else {
      print("Upload Failed");
    }
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: <Widget>[
          RaisedButton(onPressed: () {
            getImage();
          }),
          RaisedButton(
              child: Text('Upload image'),
              onPressed: () {
                uploadmultipleimage(imgList);
              }),
        ],
      )),
    );
  }
}
