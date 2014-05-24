class AlterPedido < ActiveRecord::Migration
  def up
  	# add_column :accounts, :ssl_enabled, :boolean, default: true
  	add_column("pedidos", "apellido", :string)
  	add_column("pedidos", "email", :string)
  	add_column("pedidos", "direccion", :string)
  	add_column("pedidos", "referencia", :string)
  	add_column("pedidos", "mensaje", :string)
  	add_column("pedidos", "tipo_de_pago", :string)
  	add_column("pedidos", "monto", :string)
  	add_column("pedidos", "tipo_tarjeta", :string)
  	add_column("pedidos", "pago", :string)
  	add_column("pedidos", "estado", :string,:default=>'Pendiente')
  end

  def down
  	remove_column("pedidos", "apellido")
  	remove_column("pedidos", "email")
  	remove_column("pedidos", "direccion")
  	remove_column("pedidos", "referencia")
  	remove_column("pedidos", "mensaje")
  	remove_column("pedidos", "tipo_de_pago")
  	remove_column("pedidos", "monto")
  	remove_column("pedidos", "tipo_tarjeta")
  	remove_column("pedidos", "pago")
  	remove_column("pedidos", "estado")
  end
end
