require_relative '../item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(id, publish_date, publisher, cover_state)
    super(id, nil, nil, nil, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == true
  end
  private :can_be_archived?
end
