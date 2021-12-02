using Test

using AdventOfCode2021
using BenchmarkTools


@testset "Day 02" begin
    res1 = AdventOfCode2021.Day02.position_1("data/Day02_1.txt")
    @test res1 == 1728414 
    res2 = AdventOfCode2021.Day02.position_2("data/Day02_2.txt")
    @test res1 == 1728414 


    print("Result of the first part: ", res1, "\n")
    print("Result of the second part: ", res2, "\n")
end

@testset "Day 01" begin
    using AdventOfCode2021.Day01
    @test AdventOfCode2021.Day01.larger_than(rl("data/Day01_1_test.txt", Int)) == 7
    res1 = AdventOfCode2021.Day01.larger_than(rl("data/Day01_1.txt", Int))
    @test res1 == 1446
    
    @test AdventOfCode2021.Day01.larger_than2(rl("data/Day01_2_test.txt", Int)) == 5
    res2 = AdventOfCode2021.Day01.larger_than2(rl("data/Day01_2.txt", Int))
    @test res2 == 1486

    print("Result of the first part: ", res1, "\n")
    print("Result of the second part: ", res2, "\n")

    print("Benchmark: \n")
    print(" First part:\n")
    @btime AdventOfCode2021.Day01.larger_than2(rl("data/Day01_2.txt", Int)) == 1486
    print(" Second part:\n")
    @btime AdventOfCode2021.Day01.larger_than(rl("data/Day01_1.txt", Int)) == 1446
end

