message = 'HELLO WORLD';


L = length(message);
n = [];
if mod(L, 2) == 1 % if odd
    L = L + 1; %% Leave a blank character
    % message = strcat(message, ' ');
    n = charToMatrix(' ');
end

l = L / 2;

M1 = messageToMatrix(message(1:l));
M2 = [messageToMatrix(message(l + 1:end)) n];

showM(M1);
showM(M2);

if l == 1
   gapSpace = 0;
else
    gapSpace = l - 1;    
end

l = l * 5 + gapSpace;

% l = A * 2 - 1
A = int16((l+1) / 2);
B = A;

m = zeros(A, B, h);


for i=1:A
    for j = 1:B
        for k = 1:h
            r = rand();
            if r < 2
                m(i,j,k) = i + 2 * j + 4 * k - 6;
            end
        end
    end
end