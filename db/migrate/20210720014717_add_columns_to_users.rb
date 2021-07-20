class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :role, index: true
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :business, :integer
    add_column :users, :sector, :string
    add_column :users, :responded_initial_guide, :boolean, default: false
    add_column :users, :created_facebook_page, :boolean, default: false
    add_column :users, :created_instagram_page, :boolean, default: false
    add_column :users, :created_linkedin_page, :boolean, default: false
    add_column :users, :created_youtube_page, :boolean, default: false
    add_column :users, :responded_website, :boolean, default: false
    add_column :users, :responded_public, :boolean, default: false
    add_column :users, :responded_investment, :boolean, default: false
    add_column :users, :responded_online_business, :boolean, default: false
  end
end
