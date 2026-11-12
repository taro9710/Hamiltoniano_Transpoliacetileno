function [E,V] = auto_energia_traspoliacetileno(N,E_0,t,dt,posicion_pared)
    pared = 0;
	v = t - dt;
    w = t + dt;
    H = zeros(N,N);
    for i = 1:N
        H(i,i) = E_0;
        if i < N
            H = llenar_triple_diagonal(H,i,v,w,pared);
        end
		if i == posicion_pared %Osea llena el lugar 5 y ahí surge efecto la función pared de domino
            pared = pared_de_dominio(pared);
		end
    end
	%disp(H);
	[V,D] = eig(H);

	[E,ind] = sort(diag(D));
	V = V(:,ind);

	% Normalizar autovectores
	for n = 1:length(E)
    	V(:,n) = V(:,n)/norm(V(:,n));
	end

	% Mostrar autovalores y autovectores
	%for n = 1:length(E)
   		%fprintf('Autovalor E_%d = %.6f\n',n,E(n));
    	%fprintf('Autovector:\n');
    	%disp(V(:,n));
	%end	
end
