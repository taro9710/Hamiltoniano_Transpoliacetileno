function graficar_autofunciones(N,t,dt,posicion_pared,nombre_archivo,descripcion)
	E_0 = 0;
	[E,V] = auto_energia_traspoliacetileno(N,E_0,t,dt,posicion_pared);
	% Mostrar autovalores y autovectores
	%for n = 1:length(E)
   		%fprintf('Autovalor E_%d = %.6f\n',n,E(n));
    	%fprintf('Autovector:\n');
    	%disp(V(:,n));
	%end	
	indices = (E > -abs(dt)) & (E < abs(dt));
	E_filtrado = E(indices);
	V_filtrado = V(:, indices);

	j = 15; % Índice elegido a mano

	figure;
	hold on;

	% Autovectores con energía cercana a cero
	for i = 1:length(E_filtrado)
		plot(1:N, V_filtrado(:,i), '-o', ...
			 'DisplayName', sprintf('E = %.4f', E_filtrado(i)), ...
			 'LineWidth', 2);
	end

	% Autovector elegido manualmente
%	plot(1:N, V(:,j), '-s', ...
%		 'DisplayName', sprintf('E= %.4f', E(j)), ...
%		 'LineWidth', 2);

	xlabel('Número de componente', 'FontSize', 50);
	ylabel('Valor de la componente', 'FontSize', 50);
	title(sprintf('Autovectores asociados a energías seleccionadas\n%s', descripcion), 'FontSize', 24);

	legend show;
	legend('FontSize',30);
	grid on;


	set(gcf, 'paperunits', 'inches');
	set(gcf, 'papersize', [16 9]);
	set(gcf, 'paperposition', [0 0 16 9]);

	print(gcf, nombre_archivo, '-djpg', '-r300')
	hold off;
end
