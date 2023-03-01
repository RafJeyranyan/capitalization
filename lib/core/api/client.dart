import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:tn/core/api/entities.dart';

import '../../configs.dart';
part 'client.g.dart';

@RestApi()
abstract class MainApi {
  factory MainApi(Dio dio) = _MainApi;

  @GET("https://www.alphavantage.co/query?function=OVERVIEW&symbol={symbol}&apikey=$apikey")
  Future<Company?> getCompanyBySymbol(@Path() String symbol);

}