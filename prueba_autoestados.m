function prueba_autoestados()
	N=200;
	E_0 = 0;
	t = 1;
	dt =  0.25;

	posicion_pared = 0;
	
	nombre = "autoestado_sin_pared_dt25";
	descripcion = "Sin pared de dominio; t = 1; dt = 0.25";

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);

	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

	% Pared de domino
	

	posicion_pared = 175;
	nombre = "autoestado_con_pared_175_dt25";
	descripcion = "Con pared de dominio n = 175; t = 1; dt = 0.25";

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);


	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

%	nombre = "autoestado_con_pared_10_dt-25";
%	descripcion = "Con pared de dominio N = 10; t = 1; dt = t - 1.25";
%	dt = t -0.25;
%	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

	nombre = "autoestado_con_pared_175_dt-25";
	descripcion = "Con pared de dominio n = 175; t = 1; dt = - 0.25";
	dt =  t -0.25;

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);

	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

end
