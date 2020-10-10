% Constants:
size = 5;
m = zeros(size, size, size);
vec = 1:size;

% Visuals:
offset = 0.1;

plot3(...
    vec, vec, vec * 0, "b",...
    flip(vec), vec, vec * 0, "b",...
    vec, vec + flip(vec), vec, "b",...
    flip(vec), vec + flip(vec), vec, "b",...
    vec + flip(vec), vec, vec, "b",...
    vec + flip(vec), flip(vec), vec, "b")

for i=1:size
   for j = 1:size
      for k = 1:size
          r = rand();
          if r < 0.2
              m(i,j,k) = i + 2 * j + 4 * k - 6;
          end
      end
  end
end


for i=1:size
   for j = 1:size
      for k = 1:size
          if ~m(i,j,k) == 0
              text(i, j, k, string(m(i,j,k)))
          end
      end
  end
end
grid
axis([-offset, size + 1 + offset, -offset, size + 1 + offset, -offset, size + 1 + offset])
