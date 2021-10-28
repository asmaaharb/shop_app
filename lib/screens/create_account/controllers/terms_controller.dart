import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/create_account/states/terms_states.dart';

class TermsController extends Cubit<TermsStates> {

  TermsController() : super(TermsInit());

  static TermsController of (context) => BlocProvider.of(context);

  bool isAgreed = false;

  void agree(bool value){
  if(isAgreed) return;
  isAgreed = true;
  emit(TermsInit());
  }


  }
