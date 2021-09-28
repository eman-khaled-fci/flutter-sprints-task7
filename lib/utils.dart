
import 'package:url_launcher/url_launcher.dart';
void LaunchMyURL(String url) async {
  try{
    await launch(url);
  }catch(e){
    print(e);
  }

}