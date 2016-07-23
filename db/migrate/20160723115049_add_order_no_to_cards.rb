class AddOrderNoToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :order_no, :integer
  end
end
