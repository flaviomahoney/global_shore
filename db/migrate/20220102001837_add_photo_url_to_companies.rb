class AddPhotoUrlToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :photo_url, :string
  end
end
