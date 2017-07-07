RSpec.describe Disciplina, type: :model do

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should belong_to(:professor) }
  it { should validate_presence_of(:nome) }
  it { should validate_presence_of(:periodo) }

end
