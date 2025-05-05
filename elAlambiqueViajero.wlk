import destinos.*

object juan {
  var ultimoRecuerdo = null
  var cantidadDeLugaresVisitados = 0
  var autoActual = alambique
  method cambiarVehiculo(unVehiculo) {
    autoActual = unVehiculo
  }
  method viajar(unaCiudad) {
    if(unaCiudad.puedeLlegar(autoActual)){
        ultimoRecuerdo = unaCiudad.recuerdo()
        cantidadDeLugaresVisitados = cantidadDeLugaresVisitados + 1
        autoActual.realizarViaje()
    }
  }
}

object alambique {
  var combustible = 100
  const consumoPorViaje = 10
  method puedeFuncionar() = combustible >= consumoPorViaje
  method realizarViaje() {
    combustible = combustible - consumoPorViaje
  }
  method esRapido() = true
  method fueRobado() = false
}

object chatarra {
  var cañones = 10
  var municiones = "ACME"
  method puedeFuncionar() = municiones == "ACME" and cañones.between(6,12)
  method rapido() = municiones.size() < cañones
  method realizarViaje(){
      cañones = (cañones / 2).roundUp(0)
      if (cañones < 5 )
        municiones = municiones + " Obsoleto"
  }
  method cañones() = cañones
  method fueRobado() = true
}

object blindada {
  var cantGangsters = 14
  var combustible = 100
  const consumoPorViaje = 10
  method puedeFuncionar() = combustible >= consumoPorViaje
  method realizarViaje() {
    combustible = combustible - consumoPorViaje
    cantGangsters = cantGangsters - 1
  }
  method esRapido() = cantGangsters < 7
  method fueRobado() = cantGangsters > 10
}

object convertible {
  var convertido = null
  method convertir(unVehiculo) {
    convertido = unVehiculo
  }
  method puedeFuncionar() = convertido.puedeFuncionar()
  method esRapido() = convertido.esRapido()
  method realizarViaje() = convertido.realizarViaje()
  method fueRobado() = convertido.fueRobado()
}

