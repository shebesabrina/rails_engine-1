class Api::V1::InvoiceItems::SearchController < ApplicationController
  def show
    render json: InvoiceItem.find_by(search_params)
  end

  def index
    render json: InvoiceItem.where(search_params)
  end

  private
    def search_params
      params.permit(:id, :quantity, :unit_price, :item_id, :invoice_id, :created_at, :updated_at)
    end
end
