class Integer
  def self.int_to_string( int )
    raise Converter::NUMBER_INVALID_EXCEPTION if int.blank?

    string_array = []

    if int > 100
      string_array << humanize_hash[int.to_s[0]]
      string_array << "hundred"

      int = int % 100
    end

    if int > 19

      tens_place = ( int / 10 ).floor * 10

      string_array << humanize_hash[tens_place.to_s]

      string_array << humanize_hash[(int % 10).to_s]
    else
      string_array << humanize_hash[int.to_s]
    end

    string_array.join(" ")

  end

  private

  def self.humanize_hash
    {
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine",
      "10" => "ten",
      "11" => "eleven",
      "12" => "twelve",
      "13" => "thirteen",
      "14" => "fourteen",
      "15" => "fifteen",
      "16" => "sixteen",
      "17" => "seventeen",
      "18" => "eighteen",
      "19" => "nineteen",
      "20" => "twenty",
      "30" => "thirty",
      "40" => "fourty",
      "50" => "fifty",
      "60" => "sixty",
      "70" => "seventy",
      "80" => "eighty",
      "90" => "ninety"
    }
  end

  class NUMBER_INVALID_EXCEPTION < Exception; end
end
