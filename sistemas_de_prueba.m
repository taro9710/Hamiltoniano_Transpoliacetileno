function sistemas_de_prueba()
	N=200;
	E_0 = 0;
	t = 1;
	dt = 0;
	posicion_pared = 0;

	% Sin pared de dominio 
	nombre_inicio = "sin_pared_dominio";	

	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt0"],"Sin pared de dominio	;	v=w=t	;	t=1	; dt = 0");
	
	dt = t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dtt"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = t");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t");

	dt = t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt025"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = t + 0.25");
	
	dt = t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-025"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = t - 0.25");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t");
	
	dt = -t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t025"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t + 0.25");

	dt = -t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t-025"],"Sin pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t - 0.25");

	% Con pared de dominio
	dt = 0;
	posicion_pared = 100;
	nombre_inicio = "con_pared_dominio";
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt0"],"Con pared de dominio	;	v=w=t	;	t=1	; dt = 0");
	
	dt = t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dtt"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = t");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t");

	dt = t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt025"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = t + 0.25");
	
	dt = t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-025"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = t - 0.25");
	
	dt = -t;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t");
	
	dt = -t + 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t025"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t + 0.25");

	dt = -t - 0.25;
	H_transpoliacetileno(E_0,t,dt,N,posicion_pared,[nombre_inicio,"dt-t-025"],"Con pared de dominio	;	v =	t -dt ; w = t + dt	;	t=1	; dt = -t - 0.25");
end
