class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(hasher)
    if hasher.class == Hash
      @entries.merge!(hasher)
    elsif hasher.class == String
      @entries.merge!({hasher => nil})
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyfer)
    @entries.has_key?(keyfer)
  end

  def find(prefix)
    @entries.select{|key, value| key.include?(prefix)}
  end

end
