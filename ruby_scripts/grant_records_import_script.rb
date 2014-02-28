require 'csv'

def import_grant_records
    file_path = "original_data/"

    file_name = "grant_records.csv"
    csv_rows = []
    CSV.open(file_path + file_name, 'r', ?,, ?\r) { |row| csv_rows << row }

    header = csv_rows.first
    # puts header.size
    csv_rows.delete(header)

    unecessary_cols = ["fundingType2", "fundingType1", "fundingType3", "askStatus", "gid", "requestType", "programHaleyHouse2", "programHaleyHouse1", "oldMission", "programHaleyHouse5", "programHaleyHouse4", "potential", "programHaleyHouse3"]
    row = csv_rows.first
    puts 'done' if csv_rows.each do |row|
        row_attributes = {}
        i = 0
        row.each do |col|
            # next if i >= header.size
            unless unecessary_cols.include?(header[i])
                if header[i].nil?
                    raise "Must have a header for every column. header[#{i}] is nil! Value without a header was '#{col}'"
                # else
                #     puts header[i]
                end
                row_attributes[header[i].to_s.to_sym] = col
            end
            i += 1
        end

        # { :first_name => 'Jean', 'last_name' => 'Temple', ... }

        GrantRecord.create!(row_attributes)
    end
end