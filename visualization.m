plot3(...
    vec, vec, vec * 0, "b",...
    flip(vec), vec, vec * 0, "b",...
    vec, vec + flip(vec), vec, "b",...
    flip(vec), vec + flip(vec), vec, "b",...
    vec + flip(vec), vec, vec, "b",...
    vec + flip(vec), flip(vec), vec, "b")

grid
axis([-offset, size + 1 + offset, -offset, size + 1 + offset, -offset, size + 1 + offset])

switch visuType
    case "normal"
        for i=1:size
            for j = 1:size
                for k = 1:size
                    if ~m(i,j,k) == 0
                        text(i, j, k, string(m(i,j,k)))
                    end
                end
            end
        end
        return
    otherwise
        s = visuType;
end

for i=1:size
   for j = 1:size
      for k = 1:size
          if ~m(i,j,k) == 0
              text(i, j, k, s)
          end
      end
  end
end
