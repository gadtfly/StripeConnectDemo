class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.float :amount
      t.belongs_to :tipper, index: true
      t.belongs_to :tippee, index: true

      t.timestamps
    end
  end
end
