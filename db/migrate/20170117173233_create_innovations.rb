class CreateInnovations < ActiveRecord::Migration[5.0]
  def change
    create_table :innovations do |t|
      t.datetime :date
      t.string :author
      t.string :title
      t.string :orgaim
      t.string :tags
      t.string :summary
      t.boolean :lksSearch
      t.string :context
      t.string :aimsobs
      t.string :methods
      t.string :collaboration
      t.boolean :ip
      t.string :learningpoints

      t.timestamps
    end
  end
end
