class PedidoController < ApplicationController

	layout "pedido"

	def formulario_compra
		@siteinfo = SiteInfo.find(1)
		@pedido=ListaEnsalada.find(params[:id])

		
	end

end
