// pedido_de_compra.dart
import 'cliente.dart';

enum EstadoPedido { pendiente, procesando, enviado, entregado }

enum FormaPago { efectivo, tarjetaCredito, transferencia }

class Orden {
  Cliente cliente;
  int cantidad;
   EstadoPedido estado;
  FormaPago formaPago;

  Orden(this.cliente, this.cantidad, this.estado, this.formaPago);
}
