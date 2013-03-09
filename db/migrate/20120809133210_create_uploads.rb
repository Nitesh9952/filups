class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.has_attached_file :document
      t.integer :user_id,               :null => false, :default => ""

      t.timestamps
    end
  end
end
