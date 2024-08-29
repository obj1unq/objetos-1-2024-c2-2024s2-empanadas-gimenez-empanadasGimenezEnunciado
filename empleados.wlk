//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  method cobrarMes() {
    
    
  }
}

object baigorria {
  var empanadasVendidas = 0
  var totalCobrado = 0
  
  method sueldo() = self.cantidadDeEmpanadasVendidas() * 15
  
  method vender(cantidad) {
    empanadasVendidas += cantidad
  }
  method totalCobrado() {
    return totalCobrado
    
  }
  
  method cantidadDeEmpanadasVendidas() = empanadasVendidas
  
  method cobrarMes() {
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
  }
}

object gimenez {
  var fondo = 300000
  
  method fondo() = fondo
  
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarMes()
  }
}
  
