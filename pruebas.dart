class Producto {
  int cantidad;
  double precioCompra;
  DateTime fechaCompra;

  Producto(this.cantidad, this.precioCompra, this.fechaCompra);
}

void agregarProductoAlStock(Map<String, Producto> stockActual, String producto, int cantidad, double precioCompra, DateTime fechaCompra) {
  // Verifica si el producto ya existe en el stock
  if (stockActual.containsKey(producto)) {
    // Si existe, actualiza la información del producto
    Producto productoExistente = stockActual[producto]!;
    productoExistente.cantidad += cantidad;
  } else {
    // Si no existe, agrega un nuevo producto al stock con la información especificada
    stockActual[producto] = Producto(cantidad, precioCompra, fechaCompra);
  }
}

void main() {
  // Ejemplo de uso
  Map<String, Producto> stock = {};

  // Agregar productos al stock
  agregarProductoAlStock(stock, 'productoA', 10, 15.99, DateTime.now());
  agregarProductoAlStock(stock, 'productoB', 5, 10.50, DateTime.now());

  // Mostrar el stock
  stock.forEach((producto, infoProducto) {
    print("Producto: $producto, Cantidad: ${infoProducto.cantidad}, Precio de Compra: ${infoProducto.precioCompra}, Fecha de Compra: ${infoProducto.fechaCompra}");
  });
}