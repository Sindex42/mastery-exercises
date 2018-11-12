class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    @hangar.push(plane)
  end

  def take_off(plane)
    if @hanger.length > 0
      if @hangar.includes? plane
        plane_index = @hangar.index(plane)
        @hangar.delete_at(plane_index)
        return plane
      else
        return "Error: plane not in hangar"
      end
    else
      return "Error: there are no planes to take off"
    end
  end

  def hangar_report
    if @hangar.length == 1
      "There is 1 plane in the hangar"
    else
      "There are #{ @hanger.length } planes in the hangar"
    end
  end
end

class Plane
  def initialize(name)
    @name = name
  end
end
