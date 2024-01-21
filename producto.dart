class Producto {
  int cantidad;
  double precioCompra;
  DateTime fechaCompra;

  Producto(this.cantidad, this.precioCompra, this.fechaCompra);
}

Map<String, List<Producto>> stock = {
  'productoA': [
    Producto(10, 15.99, DateTime(2024, 1, 10)),
    Producto(5, 13.99, DateTime(2023, 11, 5)),
  ],
  'productoB': [
    Producto(5, 10.50, DateTime(2023, 12, 15)),
  ],
  'productoC': [
    Producto(6, 9.49, DateTime(2023, 11, 20)),
    Producto(3, 8.99, DateTime(2023, 9, 8)),
  ],
  // ... Otros productos ...
};

// Agregar más productos al mapa
void agregarProductoAlStock(Map<String, List<Producto>> stockActual, String producto, int cantidad, double precioCompra, DateTime fechaCompra) {
  if (stockActual.containsKey(producto)) {
    // Si el producto ya existe, agrega un nuevo objeto Producto a la lista
    stockActual[producto]!.add(Producto(cantidad, precioCompra, fechaCompra));
  } else {
    // Si el producto no existe, crea una nueva lista con el primer objeto Producto
    stockActual[producto] = [Producto(cantidad, precioCompra, fechaCompra)];
  }
}

void mostrar(Map<String, List<Producto>> stock) {


  stock.forEach((producto, listaProductos) {
    print("Producto: $producto");
        
    listaProductos.forEach((producto) {
      print("  Cantidad: ${producto.cantidad}, Precio de Compra: ${producto.precioCompra.toStringAsFixed(2)}, Fecha de Compra: ${producto.fechaCompra.toLocal()}");
    });
  });

}

void mostrarConSuma(Map<String, List<Producto>> stock) {
  stock.forEach((producto, listaProductos) {
    int sumaCantidad = 0;

    for (var productoItem in listaProductos) {
      sumaCantidad += productoItem.cantidad;
    }

    print("Producto: $producto");
    listaProductos.forEach((producto) {
      print("  Cantidad: ${producto.cantidad}, Precio de Compra: ${producto.precioCompra.toStringAsFixed(2)}, Fecha de Compra: ${producto.fechaCompra.toLocal()}");
    });

    print("  Suma de Cantidades: $sumaCantidad\n");
  });
}


void main() {
  // Agregar más productos al mapa
  print("Stock con suma");
  mostrarConSuma(stock);
  print("-----");
  mostrar(stock);

  agregarProductoAlStock(stock, 'productoA', 8, 14.99, DateTime(2024, 2, 18));
  agregarProductoAlStock(stock, 'productoC', 4, 11.99, DateTime(2023, 10, 1));
  agregarProductoAlStock(stock, 'productoE', 12, 10.99, DateTime(2023, 10, 1));
  print("Stock Despues");
  
  


}
