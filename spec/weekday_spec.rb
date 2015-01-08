require('rspec')
require('weekday')

describe('Time#determine_weekday') do

  it('returns thursday given today\'s date') do
    expect(Time.new(2015,1,8).determine_weekday()).to(eq("Thursday"))
  end

  it('returns the correct weekday given a specific date') do
    expect(Time.new(2015,1,7).determine_weekday()).to(eq("Wednesday"))
  end

end

describe('String#weekday') do

  it('returns the correct weekday given a properly formatted string') do
    expect("1/8/2015".weekday()).to(eq("Thursday"))
  end

  it('returns an error message if anything but numbers is input') do
    expect("bunny".weekday()).to(eq("Invalid input! Put in a properly formatted date, dummy!"))
  end

  it('returns an error message if date entered includes invalid numbers') do
    expect("13/5/14".weekday()).to(eq("Invalid input! Enter a valid date."))
  end

end
