import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  Widget _button(context) {
    return ElevatedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Provider.of<CounControllerWithProvider>(context, listen: false).increase();
      }, 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 30)),
          Consumer<CounControllerWithProvider>(
            builder: (context, snapshot, child) {
              return Text("${snapshot.count}", style: TextStyle(fontSize: 50));
            }
          ),
          _button(context)
        ],
      )
    );
  }
}
