class CreateFreelancers < ActiveRecord::Migration[6.0]
  def change
    create_table :freelancers do |t|
      t.string :Name
      t.string :Skills
      t.string :Experience
      t.string :City
      t.string :Engagement
      t.string :Salary
      t.timestamps
    end
  end
end
