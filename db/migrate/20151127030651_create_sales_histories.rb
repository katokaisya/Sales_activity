class CreateSalesHistories < ActiveRecord::Migration
  def change
    create_table :sales_histories do |t|
      t.datetime :activity_time
      t.references :customer, index: true, foreign_key: true
      t.string :sales_category
      t.string :sales_achievement
      t.text :detail

      t.timestamps null: false
    end
  end
end
