import 'package:bitcoin_ticker/network_helper.dart';

const String apikey = '1C14E1A8-98FB-467B-A00F-2127531F0511';
const String coin = 'BTC';
const String currency = 'USD';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData() async {
    NetworkHelper networkHelper = new NetworkHelper(
        'https://rest.coinapi.io/v1/exchangerate/$coin/$currency?apikey=$apikey');

    var coinData = await networkHelper.getData();

    return coinData;
  }
}
