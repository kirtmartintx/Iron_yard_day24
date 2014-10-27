class CreateBlogitos < ActiveRecord::Migration
  def change
    create_table :blogitos do |t|

      t.timestamps
    end
  end
end
