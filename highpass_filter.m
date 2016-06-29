function [output] = highpass_filter(input,alpha)
    n = length(input);
    output = zeros(n,1);
    output(1) = 0;
    for i = 2 : n
        output(i) = alpha * (output(i - 1) + input(i) - input(i - 1));
    end
end
