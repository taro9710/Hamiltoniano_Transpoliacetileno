function H_transpoliacetileno(E_0,t,dt,N,posicion_pared,nombre,descripcion)
	[E,V] = auto_energia_traspoliacetileno(N,E_0,t,dt,posicion_pared)
	% Mostrar autovalores y autovectores
	%for n = 1:length(E)
   		%fprintf('Autovalor E_%d = %.6f\n',n,E(n));
    	%fprintf('Autovector:\n');
    	%disp(V(:,n));
	%end	

	% Graficar espectro de energía
	nombre_archivo = ["espectro_energia",nombre,".jpg"];

	
	figure
	plot(1:length(E), E, 'o', 'MarkerSize', 7)

	xlabel('Estado n', 'FontSize', 50)
	ylabel('Energía E_n', 'FontSize', 50)
	title(sprintf('Espectro de energía\n%s', descripcion), 'FontSize', 24)

	set(gcf, 'paperunits', 'inches');
	set(gcf, 'papersize', [16 9]);
	set(gcf, 'paperposition', [0 0 16 9]);

	print(gcf, nombre_archivo, '-djpg', '-r300')
	grid on    % Diagrama de niveles de energía
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
