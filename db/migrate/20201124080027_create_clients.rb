class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :Name
      t.string :Skills
      t.string :Experience
      t.string :City
      t.string :Engagement
      t.string :Budget
      
      t.timestamps
    end
  end
end
