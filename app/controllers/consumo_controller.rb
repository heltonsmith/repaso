class ConsumoController < ApplicationController
  def index

    mama = RestClient.get 'https://aves.ninjas.cl/api/birds'
    @resultado = JSON.parse(mama.to_str)
    @pager = Kaminari.paginate_array(@resultado).page(params[:page]).per(4)

  end
end
