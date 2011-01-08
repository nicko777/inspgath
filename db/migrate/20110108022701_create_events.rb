class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :startdate
      t.date :enddate
      t.string :url_link
      t.references :category
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
