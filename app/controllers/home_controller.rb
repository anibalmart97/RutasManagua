class HomeController < ApplicationController

  ###Lista los tres primeros articulos en caso de que existan
  def index
    @Articles=Article.all
    @Articulos=[]
    for line in (0...3)
      if  @Articles[line] then
        @Articulos << @Articles[line]
      end
    end
  end

  ###Permite la Visualizacion de un Articulo en Especifico
  def show
    @Articulo = Article.find(params[:id])
  end

end ##Fin de Controlador
