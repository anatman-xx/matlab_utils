function [output] = lowpass_filter(input, alpha)
    n = length(input);
    output = zeros(n,1);
    output(1) = input(1);
    for i = 2 : n
        output(i) = alpha * input(i) + (1 - alpha) * output(i - 1);
    end
end
