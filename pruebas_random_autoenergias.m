function pruebas_random_autoenergias()
	N=200;
	E_0 = 0;
	t = 1;
	dt =  0.2;

	posicion_pared = 0;
	
	nombre = "autoestado_random_sin_pared";
	descripcion = "Sin pared de dominio; t = 1; dt = 0.2";

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);

	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

	% Pared de domino
	

	posicion_pared = 175;
	nombre = "autoestado_random_con_pared_175";
	descripcion = "Con pared de dominio n = 175; t = 1; dt = 0.2";

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);


	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

end
