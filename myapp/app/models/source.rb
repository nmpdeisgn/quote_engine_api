class Source < ApplicationRecord
    enum type: %i[misc literature film theater song speech]
end
