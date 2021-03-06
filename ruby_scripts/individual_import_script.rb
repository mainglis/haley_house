require 'csv'

def import_individuals(file_name)
# def import_individuals
    file_path = "original_data/"

    # file_name = "donorsRSP.csv"
    # file_name = "WithoutDonors.csv"
    # file_name = "ListWithNotes.csv"

    csv_rows = []
    CSV.open(file_path + file_name, 'r', ?,, ?\r) { |row| csv_rows << row }

    header = csv_rows.first
    # puts header.size
    csv_rows.delete(header)

    csv_rows.each do |row|
        row_attributes = {}
        i = 0
        row.each do |col|
            # next if i >= header.size
            if header[i].nil?
                raise "Must have a header for every column. header[#{i}] is nil! Value without a header was '#{col}'"
            # else
            #     puts header[i]
            end
            row_attributes[header[i].to_s.to_sym] = col
            i += 1
        end

        # { :first_name => 'Jean', 'last_name' => 'Temple', ... }

        Individual.create!(row_attributes)
    end
end

["donorsRSP.csv", "WithoutDonors.csv"].each do |file_name|
    import_individuals(file_name)
end

["donorsRSP.csv", "WithoutDonors.csv"].each { |f| Individual.import_from_csv(f) }


list = Individual.where "organization IS NOT NULL and first_name is NULL"
list.each { |e| e.convert_to_organization! }

list = Individual.where "first_name is NULL and last_name not like '%family%'"
list.each do |record|
    puts "Is #{record.last_name} an organization? (y/n)"
    is_organization = gets.chomp == 'y'
    record.convert_to_organization! if is_organization
end

