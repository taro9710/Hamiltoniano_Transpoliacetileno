function sistemas_de_prueba()
	N=200;
	E_0 = 1;
	t = 1;
	dt = 0;
	posicion_pared = 0;
	
	% SIN PARED DE DOMINIO 
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v=w=t	|	t=1	| dt = 0");
	
	dt = t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = t");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t");

	dt = t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = t + 0.25");
	
	dt = t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = t - 0.25");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t");
	
	dt = -t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t + 0.25");

	dt = -t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	SIN PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t - 0.25");

	% CON PARED DE DOMINIO
	dt = 0;
	posicion_pared = 100;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v=w=t	|	t=1	| dt = 0");
	
	dt = t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = t");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t");

	dt = t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = t + 0.25");
	
	dt = t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = t - 0.25");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t");
	
	dt = -t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t + 0.25");

	dt = -t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,"	|	CON PARED DE DOMINIO	|	v =	t -dt ; w = t + dt	|	t=1	| dt = -t - 0.25");
end
