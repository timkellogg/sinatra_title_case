require('rspec')
require('title_case')

describe('String#title_case') do

  # RULE 1

  it("capitalizes a single word") do
    expect("grapes".title_case()).to(eq("Grapes"))
  end

  it("capitalizes all words") do
    expect("grapes wrath".title_case()).to(eq("Grapes Wrath"))
  end

  it("capitalizes all words except 'of' and 'the'") do
    expect("grapes of the wrath".title_case()).to(eq("Grapes of the Wrath"))
  end

  it("capitalizes all words except 'of' and 'the', unless it is the first word") do
    expect("the grapes of the wrath".title_case()).to(eq("The Grapes of the Wrath"))
  end

end
