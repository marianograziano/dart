// main.dart
import 'cliente.dart';
import 'orden.dart';

void main() {
  // Crear instancias de Cliente
  var cliente1 = Cliente('NombreFantasia1', 'Direccion1', 1000.0, true, 5000.0, 0.0);
  var cliente2 = Cliente('NombreFantasia2', 'Direccion2', 1500.0, false, 3000.0, 200.0);

  // Crear instancias de PedidoDeCompra
  var pedido1 = Orden(cliente1, 5, EstadoPedido.pendiente, FormaPago.tarjetaCredito);
  var pedido2 = Orden(cliente2, 3, EstadoPedido.enviado, FormaPago.efectivo);

  // Mostrar información de los pedidos y clientes
  mostrarInformacionPedido(pedido1);
  mostrarInformacionPedido(pedido2);

  mostrarInformacionCliente(cliente1);
  mostrarInformacionCliente(cliente2);
}

void mostrarInformacionPedido(Orden pedido) {
  print("Cliente: ${pedido.cliente.nombreFantasia}");
  print("Cantidad: ${pedido.cantidad}");
  print("Estado: ${pedido.estado.name}");
  print("Forma de Pago: ${pedido.formaPago.name}");
  print("\n");
}

void mostrarInformacionCliente(Cliente cliente) {
  print("Nombre Fantasia: ${cliente.nombreFantasia}");
  print("Dirección: ${cliente.direccion}");
  print("Límite de Crédito: \$${cliente.limiteCredito.toStringAsFixed(2)}");
  print("Tiene Heladera: ${cliente.tieneHeladera ? 'Sí' : 'No'}");
  print("Límite de Cuenta Corriente: \$${cliente.limiteCuentaCorriente.toStringAsFixed(2)}");
  print("Saldo Pendiente: \$${cliente.saldoPendiente.toStringAsFixed(2)}");
  print("\n");
}
