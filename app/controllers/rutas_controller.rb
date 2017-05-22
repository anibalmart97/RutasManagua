class RutasController < ApplicationController

  def recorrido
    @ruta=Ruta.all
    @recorrido=Recorrido.all
    
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
