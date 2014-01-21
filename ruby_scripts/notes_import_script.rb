require 'csv'

file_path = "original_data/"

# file_name = "donorsRSP.csv"
file_name = "WithoutDonors.csv"
csv_rows = []
CSV.open(file_path + file_name, 'r', ?,, ?\r) { |row| csv_rows << row }

header = csv_rows.first
# puts header.size
csv_rows.delete(header)

csv_rows.each do |row|
    row_attributes = {}
    extra_fields = []
    i = 0
    row.each do |col|
        if i < 8
            if header[i].nil?
                raise "Must have a header for every column. header[#{i}] is nil! Value without a header was '#{col}'"
            # else
            #     puts header[i]
            end
            row_attributes[header[i].to_s.to_sym] = col
        else
            extra_fields << col
        end
        i += 1
    end

    # { :first_name => 'Jean', 'last_name' => 'Temple', ... }

    individual_with_notes = Individual.new(row_attributes)

    existing_individual = find_a_matching_individual(individual_with_notes)

    Note.create(:note => extra_fields.join(", "), :individual => existing_individual)

end


def find_a_matching_individual
    # TODO: write this method to locate an individual based on incomplete data
    # search for indivdiaul with exact address - 
    # if you find a address that matches, add the notes but do not modify the address
    # else if you find a address that kind of matches (define that), add notes
    # end 
end
