# def size_vector(coordinates)
#   Math.sqrt(coordinates[0]**2 + coordinates[1]**2)
# end
# def cordinates_of_vector(a,b)
#   [(a[0] - b[0]).abs,(a[1] - b[1]).abs)]
# end



class Plane
  attr_reader :coordinates

  def initialize(coordinates)
    @coordinates = coordinates
  end

  def to_s
    "#{cord}"
  end

  private

  def cord
    @cord ||= Cordinates.split_coordinates(coordinates)
  end


  class Vector < Struct.new(:cord)

    def new_from_helps(number)
      self.new(help_to_see[number])
    end
    def split_coordinates(cord)
     cord.scan((/\d/))
    end

    def change_to_number
      split_coordinates.map(&:to_i)
    end

    def grupe_by_two
      change__to_number.each_slice(2)
    end

    def help_to_see
      grupe_by_two.map(&:to_ary)
    end



    # point = "0123"

    # def grupe_by_point(point)
    #   help_to_see[point[point].to_i]
    # end

    # def vector_coordinates(number)
    #   [(grupe_by_point(number)[0] - grupe_by_point(number + 1)[0]).abs,
    #    (grupe_by_point(number)[1] - grupe_by_point(number + 1)[1]).abs]
    # end

    # def vector_length(number)
    #   Math.sqrt(vector_coordinates(number)[0] ** 2 +
    #             vector_coordinates(number)[1] ** 2)
    # end
  end
end


    File.open("101.txt").each_line do |line|

      puts  Plane.new(line)

end








