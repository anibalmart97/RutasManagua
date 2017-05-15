class CreationTables < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :section_name
      t.text :section_description
    end

    create_table :articles do |t|
      t.string :article_title
      t.string :article_subtitle
      t.text :article_content
      t.date :article_date
      t.references :section,index:true,foreign_key:true
    end
  end
end
