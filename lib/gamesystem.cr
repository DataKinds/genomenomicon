require "entity"

class GameSystem
  property subsystems
  property entities
  def initialize
    @subsystems = [] of Subsystem
    @entities = [] of Entity
  end

  def apply_all
    @subsystems.each do |s|
      @entities.each do |ent|
        s.apply ent
      end
    end
  end
end

class GameSubsystem(T)
  def apply(entity : Entity)
    if entity.is_a? T
      puts "calling subsystem on entity"
    end
  end
end