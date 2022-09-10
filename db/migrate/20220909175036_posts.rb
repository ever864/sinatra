class Posts < ActiveRecord::Migration[7.0]
  def change
    create_table :Posts do |t|
      t.string :title, null: false, default: ""
      t.text :post, null: false, default: ""

      t.timestamps
    end
  end
end
