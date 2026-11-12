function prueba_autoestados_totalmente_dimerizado()
	N=200;
	E_0 = 0;
	t = 1;
	dt = t;

	posicion_pared = 0;
	
	nombre = "autoestado_sin_pared_dtt";
	descripcion = "Sin pared de dominio N = 0; t = 1; dt = t";

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);

	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

	% Pared de domino
	

	posicion_pared = 10;
	nombre = "autoestado_con_pared_10_dtt";
	descripcion = "Con pared de dominio N = 10; t = 1; dt = t";

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

	nombre = "autoestado_con_pared_10_dt-t";
	descripcion = "Con pared de dominio N = 10; t = 1; dt = - t";
	dt = - t;

	v = t - dt;
	w = t + dt;

	disp(['t = ', num2str(t)]);
	disp(['dt = ', num2str(dt)]);
	disp([' v= ', num2str(v)]);
	disp([' w= ', num2str(w)]);

	graficar_autofunciones(N,t,dt,posicion_pared,nombre,descripcion);

end
