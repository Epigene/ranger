require "ranger/version"
require 'active_support/all'

class String
  def to_range
    if self.match(/\A\d+\.{2,3}\d+\z/)
      if self.include?("...")
        return rangeify("...")
      else
        return rangeify("..")
      end
    elsif self.match(DATE_MATCH_REGEX)
      if self.include?("...")
        return d_rangeify("...")
      else
        return d_rangeify("..")
      end
    else
      raise ArgumentError, "Given string does not match /\A\d+...?\d+\z/"
    end
  end

  private
    def rangeify type # rangeify("..")
      two_range_integers = self.split(type)
      return eval(%Q|#{two_range_integers[0]}#{type}#{two_range_integers[1]}|)
    end
    def d_rangeify type
      two_range_dates = self.split(type)
      return two_range_dates[0].to_datetime.beginning_of_day..two_range_dates[1].to_datetime.end_of_day
    end
    DATE_REGEX = /\d{1,2}-\d{1,2}-\d{4}/
    DATE_MATCH_REGEX = /\A#{DATE_REGEX}\.{2,3}#{DATE_REGEX}\z/
end
