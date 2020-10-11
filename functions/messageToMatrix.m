function [m] = messageToMatrix(message)
    if length(message) == 1
        m = charToMatrix(message);
    else
        m = [];
        g = charToMatrix("gap");
        for l = message
            m = [m, g, charToMatrix(l)]; 
        end
    end
end

