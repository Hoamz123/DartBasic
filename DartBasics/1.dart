
//in ra chuong trinh dau tien
//bien va cac kieu du lieu

/**
 * type variable_name;//cau truc khi khai bao 1 bien
 * 
 */
void main(List<String> args) {
    // bienCoTheThayDoiVaTuNhanBietKieuDuLieu();
    // bienCuThe();
    // constCustom();
    // lamQuenVoiBien();
    // dynamicVaribles();
}

//bien dong co the thay doi kieu du lieu <> khac voi kotlin kotlin thi var name = "hoa" -> name = 20 -> thi loi ko chay dc
void dynamicVaribles(){
    dynamic hwa = "name";
    print(hwa);
    //thay doi ca kieu du lieu
    hwa = 30;
    print(hwa);
}

void lamQuenVoiBien(){
    final double a = 2.5;
    final double b = 3.5;
    var result = a / b;
    print(result.toStringAsFixed(2));//format output lay 2 so sau dau ","
}

//bien hang so va bine khong the thay doi
void constCustom(){
    const name = "hwa";
    final age = 30;
    print("Name $name : Age $age");
}

//bien cu the
void bienCuThe(){
    String name = "hwa";
    int age = 30;
    double cpa = 3.33;
    bool isHandSome = true;

    if(isHandSome){
        print("Name $name : Age $age : CPA $cpa");
    }

    name = "hoa";

    if(isHandSome){
        print("Name $name : Age $age : CPA $cpa");
    }
}

//
void bienCoTheThayDoiVaTuNhanBietKieuDuLieu(){
    //bien tu hieu kieu du lieu nhu kotlin
    var name = "hwa";//dart tu biet kieu du lieu la gi
    var age  = 19;//kieu int
    print("Name :$name , Age : $age");
    age = 20;//bien co the thay doi
    print("Name :$name , Age : $age");
}
