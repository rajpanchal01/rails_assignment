class ChangeRegistrationNumberToBeStringInIndustries < ActiveRecord::Migration[7.0]
  def change
    change_column :industries, :registration_number, :string
  end
end
