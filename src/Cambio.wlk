import Archivo.*


 //Abstracta
class Cambio{
	var nombreDeArchivo
	
	method validarExistencia(unaCarpeta){
		if(unaCarpeta.tieneElArchivo(nombreDeArchivo).negate()){
			throw new CommitException(message = "No se encontro el Archivo!!!!")
		}
	}
	
	method aplicarA(unaCarpeta){
		unaCarpeta.validarExistencia(nombreDeArchivo)
	}
}




//Clases Hijos
class Crear inherits Cambio{
	
	override method aplicarA(unaCarpeta){
		unaCarpeta.validarQueNoExista(nombreDeArchivo)
		unaCarpeta.agregarArchivo(new Archivo(nombre = nombreDeArchivo))
	}
}

class Eliminar inherits Cambio{
	
	override method aplicarA(unaCarpeta){
		super(unaCarpeta)
		unaCarpeta.eliminarArchivoPorSuNombre(nombreDeArchivo)
	}
}

class Agregar inherits Cambio{
	
	var contenidoExtra
	
	override method aplicarA(unCarpeta){
		super(unCarpeta)
		unCarpeta.buscarArchivoPorSuNombre(nombreDeArchivo).agregarContenido(contenidoExtra)
	}
	
}

class Sacar inherits Cambio{
	
	var contenidoAEliminar
	
	override method aplicarA(unaCarpeta){
		super(unaCarpeta)
		unaCarpeta.buscarArchivoPorSuNombre(nombreDeArchivo).sacarContenido(contenidoAEliminar)
	}
}







































class CommitException inherits Exception {

}
