clc;

% Normalization
function [p_normalized, q_normalized] = normalize_polynomials(p,q)
    if isempty(p) || isempty(q)
        error("Error: Ambos polinomios deben contener coeficientes");
    end

    max_length = max(length(p), length(q))

    p_normalized = [zeros(1, max_length - length(p)), p]; 
    q_normalized = [zeros(1, max_length - length(q)), q];

end

% Division polynomial
function division = division_polynomial(p,q)
[p_norm, q_norm] = normalize_polynomials(p,q)
[cociente, residuo] = deconv(p_norm, q_norm);
disp('División de polinomios:');
disp('Cociente');
disp(cociente);
disp('Residuo');
disp(residuo);
return
end

p = [1 -6 11 -6]; % Representa x^3 - 6x^2 + 11x - 6
q = [1 -1];       % Representa x - 1

[cociente, residuo] = deconv(p, q);
cociente = cociente(find(cociente, 1, 'first'):end);
residuo = residuo(find(residuo, 1, 'first'):end);
disp('Cociente:'); disp(cociente);
disp('Residuo:');  disp(residuo); 




