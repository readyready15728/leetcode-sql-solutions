def bit_string(integer)
    integer.to_s(2).split('').map { |x| x.to_i }
end

def hamming_distance(x, y)
    x = bit_string(x)
    y = bit_string(y)
    longest_length = [x.length, y.length].max
    
    until x.length == longest_length
        x.unshift 0
    end
    
    until y.length == longest_length
        y.unshift 0
    end
    
    x.zip(y).map { |x_n, y_n| (x_n - y_n).abs }.sum
end
