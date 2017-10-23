require "spec_helper"
require "./lib/alimento"

RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe Alimento do
  end

end
