require 'rails_helper'

#RSpec.describe Item, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
#end



# Test suite for the Item model
RSpec.describe Item, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
