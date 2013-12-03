class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :target_url
      t.string :user_agent
      t.string :class_name
      t.string :environment
      t.string :hostname
      t.string :tag
      t.text :message
      t.text :params_including
      
      t.integer :flail_exceptions_count, :null => false, :default => 0

      t.timestamps
    end
  end
end
