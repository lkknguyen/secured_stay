class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :user, index: true
      t.string :id_number
      t.string :id_type
      t.string :country_code
      t.text :activity

      t.timestamps
    end
  end
end
