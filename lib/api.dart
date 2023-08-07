import 'package:flutter/material.dart';
import 'api_model.dart';
import 'get.dart';

void main() {
  runApp(ApiScreen());
}

class ApiScreen extends StatefulWidget {
  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  List<Api> listApi = [];
  Get get = Get();

  getData() async {
    try {
      listApi = await get.getData();
      print('Data retrieved successfully: ${listApi.length} items');
      setState(() {});
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final api = listApi[index];
          return Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Text: ${api.text}'),
                Text('Type: ${api.type}'),
                Text('User: ${api.user}'),
                Text('Source: ${api.source}'),
                Text('Created At: ${api.createdAt}'),
                Text('Updated At: ${api.updatedAt}'),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: listApi.length,
      ),
    );
  }
}
