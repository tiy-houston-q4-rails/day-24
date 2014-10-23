class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.references :product, index: true

      t.timestamps
    end
  end
end
