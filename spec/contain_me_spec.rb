RSpec.describe ContainMe do
  it "has a version number" do
    expect(ContainMe::VERSION).not_to be nil
  end

  it "Test ContainMe for Hash Key" do
    expect(ContainMe.in_pocket?(3, {1=>2, 3=>4})).to eq(true)
  end

  it "Test ContainMe for Hash value" do
    expect(ContainMe.in_pocket?(2, {1=>2, 3=>4})).to eq(true)
  end

  it "Test ContainMe for Array" do
    expect(ContainMe.in_pocket?(2, [1,2,3,4])).to eq(true)
  end

  it "Test ContainMe for Range" do
    expect(ContainMe.in_pocket?(2, 1..4)).to eq(true)
  end

  it "Test ContainMe for Integer" do
    expect(ContainMe.in_pocket?(2, 1234)).to eq(true)
  end

  it "Test ContainMe for Float" do
    expect(ContainMe.in_pocket?(2, 1234.567)).to eq(true)
  end

  it "Test ContainMe for String" do
    expect(ContainMe.in_pocket?(2, '1234.567')).to eq(true)
  end

  it "Test ContainMe for TrueClass" do
    expect(ContainMe.in_pocket?('tr', true)).to eq(true)
  end

  it "Test ContainMe for FalseClass" do
    expect(ContainMe.in_pocket?('ls', false)).to eq(true)
  end

  it "Test ContainMe for Symbol" do
    expect(ContainMe.in_pocket?('cde', :abcdedf)).to eq(true)
  end

  it "Test ContainMe for Number" do
    expect(ContainMe.in_pocket?(443, 344323535345334598989545)).to eq(true)
  end

  it "Test ContainMe for Number" do
    expect(ContainMe.in_pocket?(234, 344323535345334598989545)).to eq(false)
  end

end
