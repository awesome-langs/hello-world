#import <Foundation/Foundation.h>

void hello() {
    printf("Hello World!");
}

// let myFunction (myList: list<int>): string =
//     myList |> Seq.filter (fun x -> x % 2 = 0)
//     |> Seq.map (fun x -> (x * 3).ToString())
//     |> Seq.fold (fun x y -> y + x + y) ""
// Translate from F# to Objective-C

NSString *MyFunction(NSArray<NSNumber *> *myList) {
    NSPredicate 
    NSArray<NSNumber *> *filteredArray = [myList filteredArrayUsingPredicate:[
        NSPredicate predicateWithBlock:^BOOL(NSNumber * _Nullable number, NSDictionary<NSString *,id> * _Nullable bindings) {
        return number.intValue % 2 == 0;
    }]];
    NSArray<NSString *> *mappedArray = [filteredArray valueForKeyPath:@"@unionOfObjects.self"];

}


int main() {
    @autoreleasepool {
        hello();
    }
    return 0;
}