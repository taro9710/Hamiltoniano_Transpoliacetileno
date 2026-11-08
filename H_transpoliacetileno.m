function H_transpoliacetileno(E_0,t,dt,N,posicion_pared,nombre)
    v = t - dt;
    w = t + dt;
    pared = 0;

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

	% Graficar espectro de energía
	titulo = ["Espectro de energía",nombre];
    figure
    plot(1:length(E),E,'o','MarkerSize',7)
    xlabel('Estado n')
    ylabel('Energía E_n')
    title(titulo)
    grid on

    % Diagrama de niveles de energía
    %figure
    %hold on

    %for n = 1:length(E)
    %    plot([0 1],[E(n) E(n)],'b','LineWidth',2)
    %end

    %xlim([-0.5 1.5])
    %xticks([])
    %ylabel('Energía')
    %title('Niveles de energía')
    %grid on
    %hold off
end
