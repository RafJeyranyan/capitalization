String addDots(String num){
  String tmp = num;
  for(int i = num.length - 3; i > 0; i -=  3){
    tmp = "${tmp.substring(0,i)}.${tmp.substring(i)}";
  }
  return tmp;
}