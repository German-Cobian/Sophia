require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should belong_to :user }
  it { should belong_to :category }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
end
