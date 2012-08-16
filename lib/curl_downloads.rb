require 'curb'
require "fileutils"

module CurlDownloads
  def start_request(url)
    request = Curl::Easy.new(url)
    request.autoreferer = true
    request.follow_location = true
    request.connect_timeout = 5
    request.timeout = 10

    request
  end

  def file_limit(url)
    request = start_request(url)  { |r| r.http_head = true }
    request.perform

    file_size = request.downloaded_content_length.to_i
    request.close

    file_size
  end

  def download(url, file_name)
    request = start_request(url)
    request.fetch_file_time = true
    request.perform

    file_time = request.file_time
    local_file(file_name, request.body_str)

    request.close

    reset_time(file_name, file_time)
  end

  def local_file(file_name, file_body)
    File.open(file_name, 'w') do |contents|
      contents.puts file_body
    end
  end

  def reset_time(file_name, file_time)
    if file_time != -1 && File.exists?(file_name)
      FileUtils.touch(file_name, mtime: file_time)
    end
  end

end