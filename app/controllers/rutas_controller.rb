class RutasController < ApplicationController

  def recorrido
    @ruta=Ruta.all
    @recorrido=Recorrido.all
    gon.test=5
    @record=gon.test
    # @Prueba_GEOJSON=''
    # for line in (0...1)
    #   if  @Recorridos[line] then
    #     @Prueba_GEOJSON=@Recorridos[line]
    #   end
    # end
  end

  def searchRecorrido
    ruta_record= Recorrido.find(:record)
    render :json => ruta_record
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recorrido
      @recorrido = Recorrido.find(params[:id])
    end

end
