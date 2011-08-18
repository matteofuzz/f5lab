class CreatePortfolioItems < ActiveRecord::Migration

  def self.up
    create_table :portfolio_items do |t|
      t.string :title
      t.text :description
      t.integer :screenshot_id
      t.string :link
      t.datetime :published_at
      t.integer :position

      t.timestamps
    end

    add_index :portfolio_items, :id

    load(Rails.root.join('db', 'seeds', 'portfolio_items.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "portfolio_items"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/portfolio_items"})
    end

    drop_table :portfolio_items
  end

end
