# frozen_string_literal: true

class SightingsSerializer
  def initialize(sigthing_object)
    @sighting = sigthing_object
  end

  def to_serialized_json
    options = {
      include: {
        bird: {
          only: %i[name species]
        },
        location: {
          only: %i[latitude longitude]
        }
      },
      except: [:updated_at]
    }
    @sighting.to_json(options)
  end
end
