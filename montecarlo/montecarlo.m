clear all;

n = 10^7;
c = 0;
s = 0;

tic

for i = 1:n
    
    P = rand(2, 1);

    if (P(1)^2 + P(2)^2) > 1
        s = s + 1;
    else
        c = c + 1;
    end
end

pi = 4 * c/(s + c);
disp(pi);

toc