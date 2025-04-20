


get_sum(value: u32, array: u32[]) -> u32 {
    sum: u32 = 0;
    for k = 0; k < value; k ++ {
        sum += k;
    }

    return sum;
}


// comments are @
main(int argc, char **argv) -> u32 {
    array: u32[] = [2,343,5]; // compile time known size
    int return_value =  get_sum(10, array);

    println(return_value); @figures out how to print the w/out format
    return 0; /* u can assume this */
}
