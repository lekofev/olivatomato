class PedidoController < ApplicationController

	layout "pedido"

	def formulario_compra
		@siteinfo = SiteInfo.find(1)
		
	end
end
