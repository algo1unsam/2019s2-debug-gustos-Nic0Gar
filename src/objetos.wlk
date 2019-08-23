/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }
object celeste { method esFuerte() { return false } } 
object pardo { method esFuerte() { return false } }
object naranja { method esFuerte() { return true}}

/* materiales */
object cobre { 	method brilla() { return true }
				method conduce() { return true} }
object vidrio { method brilla() { return true }
				method conduce() { return false } }
object lino { 	method brilla() { return false }
				method conduce() { return false } }
object madera { method brilla() { return false }
				method conduce() { return false } }
object cuero { 	method brilla() { return false }
				method conduce() { return false } }
object plomo {
	var estado = natural 
	method setEstado(_est){
		estado = _est 
	}
	method estado(){
		return estado
	}
	method brilla(){
		return estado.brilla()
	}
	method conduce(){
		return estado.conduce()
	}
}

/* estados */
object natural { 
	method brilla(){ return true}
	method conduce(){ return false}
}
object cromado {
	method brilla(){ return true}
	method conduce(){ return true}
}
object oxidado {
	method brilla(){ return false}
	method conduce(){ return false}
}

/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }
	method material() { return cuero }
	method peso() { return 1300 }
}

object arito {
	method color() { return celeste }
	method peso() { return 180 }
	method material() { return cobre }
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var _peso 
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object placa {
	var _color
	var _peso 
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return cobre }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object banquito {
	var _color 
	
	method color() { return naranja }
	method setColor(color) { _color = color }
	method material() { return madera }
	method peso() { return 1700 }
}

object cajita {
	var objInterior = pelota
	var material = cobre
	
	method setObjetoInterior (obj){
		objInterior = obj
	}
	method color() { return rojo }
	
	method material() { return material}
	
	method objetoInterior(){ return objInterior}
	
	method setMaterial(_mat){
		material = _mat
	}
	method peso(){
		return 400 + objInterior.peso()
	}
}



