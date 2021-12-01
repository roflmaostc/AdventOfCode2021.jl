module Day01

function larger_than(series) 
    counter = 0
    for i = 2:length(series)
        counter += series[i] > series[i-1] ? 1 : 0
    end
    return counter
end

function larger_than2(series) 
    counter = 0
    for i = 4:length(series)
        if sum(view(series, i-3:i-1)) < sum(view(series, i-2:i))
            counter += 1
        end
    end
    return counter
end
end
