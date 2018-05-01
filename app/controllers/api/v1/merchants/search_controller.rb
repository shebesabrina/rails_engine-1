class Api::V1::Merchants::SearchController < ApplicationController

  def show
    render json: Merchant.find_by(search_params)
  end

  def index
    binding.pry
    render json: Merchant.where(search_params)
  end

  private
    def search_params
      params.each {|k,v| v.downcase!}
      params.permit(:id, :name, :created_at, :updated_at)
    end
end
