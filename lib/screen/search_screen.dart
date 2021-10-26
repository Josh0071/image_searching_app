import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_searching_app/view_model/pixabay_result.dart';
import 'package:image_searching_app/view_model/view_model.dart';
import 'package:image_searching_app/widget/image_item.dart';
import 'package:provider/provider.dart';

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
    context.read<ViewModel>().getImage('iphone');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ViewModel>().response;
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Test'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
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
                        decoration: const InputDecoration(
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
                        .showSnackBar(const SnackBar(content: Text('올바른 검색어를 입력해주세요')));
                  }
                  FocusScope.of(context).unfocus();
                  context.read<ViewModel>().getImage(_controller.text);
                },
                child: const Text('검색'),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<ViewModel>(builder: (_,ViewModel viewModel, Widget? child){
           return imageWidget(context, model!);
            }
          )
        ],
      ),
    );
  }

  Widget imageWidget(BuildContext context, PixabayResult response,) {
    final hits = response.hits!;
    if(hits.isEmpty){
      return const Center(
        child: Text('올바른 검색어를 입력해주세요',
        style: TextStyle(
          fontSize: 25,
        ),),
      );
    }
    return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hits.length,
              itemBuilder: (BuildContext context, int index,) {
                return ImageItem(
                  hits: hits[index],
                );
              },
            );
  }
}
