require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many(:articles).dependent(:destroy) }
  it { should have_one(:most_recent_article) }
  it { should validate_presence_of(:topic) }
end
