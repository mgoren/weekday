class Time
  define_method(:determine_weekday) do
    date = self
    if date.sunday?()
      return "Sunday"
    elsif date.monday?()
        return "Monday"
    elsif date.tuesday?()
      return "Tuesday"
    elsif date.wednesday?()
      return "Wednesday"
    elsif date.thursday?()
      return "Thursday"
    elsif date.friday?()
      return "Friday"
    else
      return "Saturday"
    end
  end
end

class String
  define_method(:weekday) do
    date_array_of_strings = self.split('/')
    date_array = []

    date_array_of_strings.each() do |element| #make new array of Fixnums
      date_array.push(element.to_i)
    end

    month = date_array[0]
    day = date_array[1]
    year = date_array[2]

    if month == 0 || day == 0 || year == 0
      return "Invalid input! Put in a properly formatted date, dummy!"
    elsif (month < 1 || month > 12) || (day < 1 || day > 31)
      return "Invalid input! Enter a valid date."
    end

    date = Time.new(year,month,day)
    weekday = date.determine_weekday()

    return weekday


  end
end
