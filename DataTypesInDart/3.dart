

//map

import 'dart:io';

void main(List<String> args) {
    //khai bao map
    // const mp = {1 : "hoa",2 : "hwa"};//map nay ko the thay doi
    var mp = {};//map rong
    mp[1] = "hoa";
    mp[2] = "Dinh Van Hoa";
    print(mp[2]);
    show(mp);
}

void show<T,A>(Map<T,A> mp){
    print("");
    mp.forEach((K,V){
        stdout.write("$K $V ");
    });
}