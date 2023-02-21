import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  late String desc;

  LoadingIndicator(this.desc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const CircularProgressIndicator(
            backgroundColor: Colors.white,
            color: Colors.black45,
            strokeWidth: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            desc,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
