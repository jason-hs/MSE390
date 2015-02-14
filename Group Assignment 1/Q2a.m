%Use three iterations of the false-position method to
%determine your answer. Employ an interval [0, R].
clear, clc
V = 30; % m^3
R = 3; % meters
syms h
V = pi()*h^2*(3*R-h)/3 == 30;
result = solve(V,h)
result2 = eval(result)

%false-position method
h = 0 : R;
count = 0
X_L = 0;
X_U = R;
X_R_old = 0;
while count < 3


X_L_arr = X_L + 1;
X_U_arr = X_U + 1;
V = pi().*h.^2.*(3*R-h)/3


X_R_new = X_U - (V(X_L_arr)*(X_L - X_U))/(V(X_L_arr) - V(X_U_arr))
X_R_arr = X_R_new + 1;
V(X_L_arr)
if V(X_L_arr)*V(X_R_arr) < 0
    disp('Root lies in')
    [X_L,X_R_new]
elseif V(X_L_arr)*V(X_R_arr) > 0
     disp('Root lies in')
     [X_R_new,X_U]
end
count + 1;
end
