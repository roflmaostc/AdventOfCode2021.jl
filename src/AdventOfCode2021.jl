module AdventOfCode2021
    export rl

    function rl(fname, T)
        parse.(Int, readlines(fname))
    end
    
    include("Day01.jl")
end # module
