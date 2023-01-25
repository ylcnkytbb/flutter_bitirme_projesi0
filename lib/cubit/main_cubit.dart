import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodies/models/yemekler.dart';
import 'package:foodies/repo/fooddao_repository.dart';


class MainCubit extends Cubit<List<Yemekler>>{
  MainCubit():super(<Yemekler>[]);
  var yrepo=FoodDaoRepository();

  Future<void> foodsDowload() async {
    var list = await yrepo.takeAllFoods();
    emit(list);
  }
}