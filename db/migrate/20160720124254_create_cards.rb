class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.belongs_to :list, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
