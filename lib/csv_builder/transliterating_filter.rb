#encoding: utf-8

class CsvBuilder::TransliteratingFilter

  def initialize(csv, input_encoding = 'UTF-8', output_encoding = 'LATIN1')
    @csv = csv
  end
  
  def <<(row)
    @csv << row.map { |value| value.to_s.gsub(/\r|\n|\t/, ' ') }
  end
  
  alias :add_row :<<
end
