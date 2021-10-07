import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_searching_app/model/api.dart';
import 'package:image_searching_app/model/pixa_image.dart';
import 'package:image_searching_app/widget/pixa_image_list.dart';
import 'package:image_searching_app/widget/search_bar.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'API Test',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '키워드',
            ),
          ),
          FutureBuilder(
            future: fetchList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              List<PixaImage> list = snapshot.data;
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  PixaImage data = list[index];
                  return PixaImagedata(
                    tags: data.tags,
                    previewURL: data.previewURL,
                    previewWidth: 180,
                    previewHeight: 120,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  SearchScreen(this.controller);
}
