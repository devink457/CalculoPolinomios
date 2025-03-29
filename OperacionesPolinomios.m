clc;

% Normalization
function [p_normalized, q_normalized] = normalize_polynomials(p,q)
    if isempty(p) || isempty(q)
        error("Error: Ambos polinomios deben contener coeficientes");
    end
    if length(p) ~= length(q)
      % Polynomials don't have the same grade, they can't be added
      disp('Los polinomios no tienen el mismo grado. Se ajustarán para poder operarlos');
    end

    max_length = max(length(p), length(q))

    p_normalized = [zeros(1, max_length - length(p)), p]; 
    q_normalized = [zeros(1, max_length - length(q)), q];

end

function addition = sum_polynomial(p, q)
    % Addition polynomial
    [p_norm, q_norm] = normalize_polynomials(p, q); % use the function normalize_polynomials
    addition = p_norm + q_norm; % add the polynomials
    disp('Suma de polinomios:');
    disp(addition);
end

function product = product_polynomial(p, q)
    % Product polynomial
    [p_norm, q_norm] = normalize_polynomials(p, q); % use the function normalize_polynomials
    product = conv(p_norm, q_norm); % multiply the polynomials
    disp('Producto de polinomios:');
    disp(product);
end

p = [1 -6 11 -6]; % x^3 - 6x^2 + 11x - 6
q = [1 -1];       % x - 1

[p_norm, q_norm] = normalize_polynomials(p, q)

%Results
addition = p_norm + q_norm;
disp('Suma de polinomios:');
disp(addition);

product = conv(p_norm, q_norm);
disp('Producto de polinomios:'); 
disp(product);

