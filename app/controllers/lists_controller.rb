class ListsController < ApplicationController
  protect_from_forgery expect: [:update]

  def index
    @lists = List.all
  end

  def lists
    @lists = List.all
    render json: { lists: @lists.to_json(include: :cards) }
  end

  def update
    @card = Card.find params[:id]
    if @card.update card_params
      render json: { status: 'success' }
    else
      render json: { status: 'failure' }
    end
  end

  private

    def card_params
      parmas.require(:card).permit(:list_id)
    end
end
