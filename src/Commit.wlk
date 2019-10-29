import Archivo.*

class Commit{
	var descripcion
	var cambios =[]
	var carpeta
	
	method aplicarCambios() {
		cambios.forEach({cambio => cambio.aplicarA(carpeta)})
	}
}

