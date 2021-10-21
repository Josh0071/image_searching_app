import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_searching_app/view_model/hits.dart';
import 'package:image_searching_app/widget/image_item.dart';
import 'package:image_searching_app/inherited_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formkey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Test'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _controller,
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return '올바른 검색어를 입력하세요.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: '검색어를 입력하세요',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('error')));
                  }
                  setState(() {});
                  FocusScope.of(context).unfocus();
                },
                child: Text('검색'),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          StreamBuilder<List<Hits>>(
            stream: HitsInherited.of(context).view_model.hitsStream,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Center(
                        child: Align(
                            alignment: Alignment.center,
                            child: CircularProgressIndicator())),
                  ],
                );
              }
              final result = snapshot.data;
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: result?.length!,
                itemBuilder: (BuildContext context, int index) {
                  return ImageItem(
                    hits: result![index],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
