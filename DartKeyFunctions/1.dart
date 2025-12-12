
//func in dart
void main(List<String> args) {
    // int res = minus(10, 1);
    var method = (a,b){
        return a + b;
    };
    print(method(1,2));
}

//lambda
int minus(int a,int b) => (a - b);

int add_(int a,int b,[int c = 10]){
    return a + b + c;
}

int add(int a,int b){
    return a + b;
}