import elAlambiqueViajero.*

object paris {
  const recuerdo = "llavero de la torre eiffel"
  method recuerdo() = recuerdo
  method puedeLlegar(unVehiculo) {
    unVehiculo.puedeFuncionar()
  }
}

object buenosAires {
  var recuerdo = null
  var gobierno = "milei"
  method cambiarGobierno(unGobierno){
    gobierno = unGobierno
  }
  method recuerdo() {
    return
        if(gobierno == "libertario"){
            recuerdo = "un mate sin yerba"
        }
        if(gobierno == "peronista"){
            recuerdo = "un mate con yerba"
        }
  }
  method puedeLlegar(unVehiculo) = unVehiculo.esRapido()
}

object bagdag {
  var recuerdo = "un bidon de petroleo"
  method recuerdo() = recuerdo
  method cambiarRecuerdo(nuevo) {
    recuerdo = nuevo
  }
  method puedeLlegar(unVehiculo) = true
}

object losAngeles {
  var ciudadTributo = paris
  method ciudadTributo(unaCiudad) {
    ciudadTributo = unaCiudad
  }
  method recuerdo() = ciudadTributo.recuerdo()
  method puedeLlegar(unVehiculo) = ciudadTributo.puedeLlegar(unVehiculo)
}

object boca {
  const recuerdo = "enano bostero"
  method recuerdo() = recuerdo
  method puedeLlegar(unVehiculo) = unVehiculo.fueRobado()
}