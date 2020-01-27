current = 236491
maximum = 713787
count = 0
loop do
    if current > maximum
        puts count
        break
    end
    increasing = true
    repeated = false
    for i in 0..4
        if (current / (10 ** (5 - i))) % 10 == (current / (10 ** (4 - i))) % 10
            repeated = true
        elsif (current / (10 ** (5 - i))) % 10 > (current / (10 ** (4 - i))) % 10
            increasing = false
        end
    end
    if repeated and increasing
        count += 1
    end
    current += 1
end