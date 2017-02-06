class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string   :name, limit: 45, null: false, default: ''
      t.datetime :signup_date

      t.timestamps null: false
    end
  end
end
