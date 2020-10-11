% message = 'HELLO WORLD';
% 
% m = [];
% g = charToMatrix("gap");
% for l = message
%     m = [m, g, charToMatrix(l)]; 
% end
% showM(m)













%% Matrix natural order
message = 'HELLO WORLD ';

L = length(message);
if mod(L, 2) == 1 % if odd
    L = L + 1; %% Leave a blank character
end

l = L / 2;

if l == 1
   gapSpace = 0;
else
    gapSpace = l - 1;    
end

l = l * 5 + gapSpace;

% l = A * 2 - 1
A = int16((l+1) / 2);
B = A;
C = 7;

m = zeros(A, B, C);


for i=1:A
    for j = 1:B
        for k = 1:C
            r = rand();
            if r < 2
                m(i,j,k) = i + 2 * j + 4 * k - 6;
            end
        end
    end
end