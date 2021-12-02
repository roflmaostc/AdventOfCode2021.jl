module Day02

function position_1(fname)
    lines = readlines(fname)
    horiz = 0
    depth = 0
    for l in lines
        s, c = split(l, " ")
        c = parse(Int, c)
        depth += s == "up" ? -c : (s == "down" ? c : 0)
        horiz += s == "forward" ? c : 0
    end
    return horiz * depth
end


function position_2(fname)
    lines = readlines(fname)
    horiz = 0
    depth = 0
    aim = 0
    for l in lines
        s, c = split(l, " ")
        c = parse(Int, c)
        aim += s == "up" ? -c : (s == "down" ? c : 0)
        if s == "forward"
            horiz += c
            depth += c * aim
        end
    end
    return horiz * depth
end


end
