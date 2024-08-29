//Escribir aqui los objetos
//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var saldo = 0

  method dinero() {
    return saldo.max(0)
    // return if (saldo >= 0) saldo else 0
  }

  method deuda() {
    return saldo.min(0).abs()
    // return if (saldo < 0) saldo else 0
  }

  method gastar(cuanto) {
    saldo -= cuanto
  }
  method cobrarSueldo() {
    saldo += sueldo
  }

  method sueldo() {
    return sueldo
  }
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
}

object baigorria {
  var cantidadVendidas = 0
  var totalCobrado = 0

  method totalCobrado() {
    return totalCobrado  
  }

  method cobrarSueldo() {
    totalCobrado += self.sueldo()
    cantidadVendidas = 0
  }


  method vender(cantidad) {
    cantidadVendidas += cantidad
    // cantidadVendidas = cantidadVendidas + cantidad
  }
  
  method sueldo() {
    return cantidadVendidas * 15
  }
}

object gimenez {
  var fondo = 300000

    method fondo() {
      return fondo
    }
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
}