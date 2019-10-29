class CarpetaException inherits Exception {

}

class CambioException  inherits Exception{

}

class Carpeta{
	var nombre
	var archivos = []
	
	method tieneElArchivo(unNombre) = archivos.contains(self.buscarArchivoPorSuNombre(unNombre))
	
	
	method agregarArchivo(unArchivo){
		
		archivos.add(unArchivo)

	}
	
	method eliminarArchivoPorSuNombre(unNombre){
		
		archivos.remove(self.buscarArchivoPorSuNombre(unNombre))
	}
	
	//me devuelve el obje archivo con el nombre
	method buscarArchivoPorSuNombre(unNombre) =	archivos.find({			archivo => archivo.nombre().equals(unNombre)		})

	
	method validarExistencia(nombreDeArchivo){
		
		if(self.tieneElArchivo(nombreDeArchivo).negate())
		{
			throw new CarpetaException(message = "No se encontro el Archivo!!!!")
		}
	}
	
	method validarQueNoExista(nombreDeArchivo){
		
		if(self.tieneElArchivo(nombreDeArchivo))
		{
			throw new CambioException(message = "Ya existe!!!!")
		}
	}
	
	method nombre() = nombre
} 