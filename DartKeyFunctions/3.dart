

//aysnc and await

void main(List<String> args) async {
    print("Starting...");

    var result = await Future.wait(
        [fetchUser(),fetchUser()]
    );

    print(result);

    print("Success");
}

Future<String> fetchUser() async{
    await Future.delayed(Duration(seconds: 2));//de lay 2s
    return "hwa";
}

Future<String> fetchPosts() async{
    await Future.delayed(Duration(seconds: 2));//delay 2s
    return "posts data";
}
