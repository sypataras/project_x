module ApiHelper
  def digsite_type(info)
    info.sub(/^POLYGON\(\(/, '').sub(/\)\)$/, '')
  end
end
