function [m] = messageToMatrix(message)
    m = [];
    g = charToMatrix("gap");
    for l = message
        m = [m, g, charToMatrix(l)]; 
    end
end

