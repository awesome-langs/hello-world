fn hello() {
    println("Hello World!")
}

fn my_function(my_list []int) string {
    mut result := ''
    for x in my_list {
        if x % 2 == 0 {
            str := int.to_str(x * 3)
            result = str + result + str
        }
    }
    return result
}

fn main() {
    hello()
    println(my_function([1, 2, 3, 4, 5]))
}
