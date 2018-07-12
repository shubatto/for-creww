class RenameTypeColumnToInquiries < ActiveRecord::Migration[5.0]
  def change
		rename_column :inquiries, :type, :inquiry_type_id
  end
end
