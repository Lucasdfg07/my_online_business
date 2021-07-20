class CreateSocialNetworks < ActiveRecord::Migration[6.1]
  def change
    create_table :social_networks do |t|
      t.belongs_to :user
      t.integer :name
      t.timestamps
    end
  end
end
