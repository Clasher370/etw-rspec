class Tea
  def flavor
    :earl_grey
  end

  def temperature
    205.0
  end

  def inspect
    'Hello World'
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/example.txt'
end

RSpec.describe Tea do
  let(:tea) { Tea.new }

  it 'is taste like earl grey' do
    expect(tea.flavor).to be :earl_grey
  end

  it 'is hot' do
    expect(tea.temperature).to be > 200.0
  end
end
