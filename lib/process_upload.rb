require "uri"

module ProcessUpload
  # Extract links from the file as an array deleting empty lines
  def read_file(file_path)
    if File.exists?(file_path)
      lines = File.readlines(file_path)
      lines.reject! { |l| l.empty? }
    end
  end

  # Count the number of links in the file
  def count_links(file_path)
    read_file(file_path).count
  end

  # Make sure a link is a valid url
  def valid_link?(link)
    begin
      URI.parse(link)
      true
    rescue InvalidURIErrror
      false
    end
  end
end