class CreateIndustriesSectors < ActiveRecord::Migration[7.0]
  def change
    create_table :industries_sectors do |t|
      t.references :sector, null: false, foreign_key: true
      t.references :industry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
