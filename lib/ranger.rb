require "ranger/version"

class String
  def to_range
    if self.match(/\A\d+...?\d+\z/)
      if self.include?("...")
        return rangeify("...")
      else
        return rangeify("..")
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
end
