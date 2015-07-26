class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :body, null: false
    end
  end
end
