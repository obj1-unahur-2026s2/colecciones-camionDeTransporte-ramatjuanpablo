import cosas.*

object camion {

const cosas = []

var tara = 1000

method pesoTotalDelCamion(){return tara + cosas.peso()} 

method cargar(cosa){

cosas.add(cosa)

}

method descargar(cosa){

cosas.remove(cosa)

}

method totalDeCosasCargadasEsPar(){

return cosas.sum({ a => a.peso() }) % 2 == 0

}

method quePesoTiene(valor){

return cosas.any({a => a.peso() == valor})

}

method primerCosaConNivelDePeligrosidad(valor){

cosas.find({a => a.peligro() == valor})

}

method cosasQueSuperanDeterminadoValor(valor) {
return  cosas.filter({a => a.peligro() > valor})
}

method cosasQueSuperanPeligrosidadDeOtra(cosa) {
return  cosas.filter({a => a.peligro() > cosa.peligro()})
}

method tieneSobrePeso(){
return self.pesoTotalDelCamion() > 2500
}

method puedeCircular(){

return 

}

}