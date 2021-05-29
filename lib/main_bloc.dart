import 'package:bloc_logic/bloc/basic_bloc.dart';
import 'package:bloc_logic/page/cat.dart';
import 'package:bloc_logic/router/router_name.dart';
import 'package:rxdart/rxdart.dart';

class MainBloc extends BaseBloc {
  final textController = BehaviorSubject<String>();

  Stream<String> get textStream => textController.stream;


  @override
  void dispose() {
    // TODO: implement dispose
    textController.close();
  }

  Future textCheck(String text) async {
    if(text == 'cho'){
      textController.sink.add(router_dog);
    }else if(text == 'meo'){
      textController.sink.add(router_cat);
    }else if(text == 'heo'){
      textController.sink.add(router_pig);
    }else{
      textController.sink.addError('Khong tim thay');
    }

  }

}
