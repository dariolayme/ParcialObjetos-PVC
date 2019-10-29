class Archivo{
	var nombre
	var contenido =""
	
	method agregarContenido(contenidoExtra) {
		contenido = contenido + contenidoExtra
	}
	
	method sacarContenido(contenidoExtra) {
		//contenido = contenido - contenidoExtra
		//contenido = contenido.dropRight(contenidoExtra.length())
		if (contenido.endsWith(contenidoExtra)) {
			contenido = contenido.take(contenido.length() - contenidoExtra.length())
		}
	}
}