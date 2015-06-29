module ApplicationHelper
  
  #helper_method :gunzip
  #helper_method :gzip
    
  require 'zlib'
  require 'stringio'
  require 'json'
 
  def gunzip(data)
    io = StringIO.new(data, "rb")
    gz = Zlib::GzipReader.new(io)
    decompressed = gz.read
  end

  def gzip(string)
    wio = StringIO.new("w")
    w_gz = Zlib::GzipWriter.new(wio)
    w_gz.write(string)
    w_gz.close
    compressed = wio.string
  end
  
    
end
