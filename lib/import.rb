require 'csv'

module Import
  def self.csv_read(file_path, file_name=nil, header=false)
    file_path = File.expand_path(file_name, file_path) unless file_name.nil?

    lines = CSV.read(file_path)
    lines.unshift([]) unless header

    lines.each_with_index do |line, idx|
      next if      idx == 0
      next unless  line.length > 0

      yield(line, idx) if block_given?
    end
  end
end
