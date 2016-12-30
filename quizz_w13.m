function value = sigmoid(x)
  value = 1 / (1 + exp(-x));
endfunction

function [b1, h1, b2, h2, bv, v] = c011()
  b1 = 0;
  h1 = 0;

  b2 = 0;
  h2 = 1;

  bv = 0;
  v = 1;
endfunction

function [b1, h1, b2, h2, bv, v] = c111()
  b1 = 0;
  h1 = 1;

  b2 = 0;
  h2 = 1;

  bv = 0;
  v = 1;
endfunction

[b1, h1, b2, h2, bv, v] = c011();
w1 = -6.90675478;
w2 = 0.40546511;
inner = w1 * h1 + w2 * h2 + bv;

q2 = sigmoid(inner)

q3 = sigmoid(inner) * sigmoid(b1) * sigmoid(b2)

q4 = 0.00000

q5 = 1 - sigmoid(w2)

[b1, h1, b2, h2, bv, v] = c011();
w1 = 10;
w2 = -4;
inner = w1 * h1 + h2 * w2 + bv;

q6 = (sigmoid(inner) * sigmoid(b2)) / ...
     (sigmoid(bv + h1 * w1 + 1 * w2) * sigmoid(b2) ...
      + sigmoid(bv + h1 * w1 + 0 * w2) * (1 - sigmoid(b2)))

[b1, h1, b2, h2, bv, v] = c111();
inner = w1 * h1 + h2 * w2 + bv;

q7 = (sigmoid(inner) * sigmoid(b2)) / ...
     (sigmoid(bv + h1 * w1 + 1 * w2) * sigmoid(b2) ...
      + sigmoid(bv + h1 * w1 + 0 * w2) * (1 - sigmoid(b2)))
