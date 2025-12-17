

Future<void> main(List<String> args) async {
    // Stream<int> stream = getAllNumber();
    // stream.listen(
    //     (num){
    //         sum += num;
    //     },onDone: () {
    //         print(sum);
    //     }
    // );
    final sum = await getAllNumber().reduce(add);
    print(sum);
}

int add(int a,int b) => a + b;

Stream<int> getAllNumber() async*{
    yield 10;
    yield 20;
    await Future.delayed(
            const Duration(seconds: 1)
        );
    yield 30;
    yield 40;
    await Future.delayed(
            const Duration(seconds: 1)
        );
    yield 50;
    await Future.delayed(
            const Duration(seconds: 1)
        );
    yield 60;
}