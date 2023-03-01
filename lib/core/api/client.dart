import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../configs.dart';
part 'client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class MainApi {
  factory MainApi(Dio dio) = _MainApi;



}