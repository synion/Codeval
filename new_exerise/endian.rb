def system_endian
    system, big, little = %w(s2 n2 v2).map { |ts| [1,2].pack ts }
    case system
      when big;    :BigEndian
      when little; :LittleEndian
    end
    puts big
end
puts system_endian