import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modal/country_modal.dart';

class DreamsToFlyBloc extends ChangeNotifier{
  List<CountryModal> countries = [CountryModal(name: "Germany")];

  List<CountryModal> getListOfCountryModal(){
    List<CountryModal> list = [];
    ///Some API call.
    return   list;
  }

}
