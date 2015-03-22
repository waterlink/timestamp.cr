struct Time
  TIMESTAMP_OFFSET = Time.new(1970, 1, 1)
  TIMESTAMP_OFFSET_TICKS = TIMESTAMP_OFFSET.ticks

  def self.from_timestamp(timestamp)
    TIMESTAMP_OFFSET + timestamp.seconds
  end

  def to_timestamp
    (ticks - TIMESTAMP_OFFSET_TICKS) / TimeSpan::TicksPerSecond.to_f
  end
end
