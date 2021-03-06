class Invoice < ActiveRecord::Base
  belongs_to :employee
  belongs_to :company
  has_many :purchases, dependent: :destroy

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Invoice.create! row.to_hash
    end
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |invoice|
        csv << invoice.attributes.values_at(*column_names)
      end
    end
  end

end
