class ChangeNumberLimitInOpportunities < ActiveRecord::Migration[6.1]
  def change
    change_column :opportunities, :number, :integer, limit: 8
  end
end
