module FileType
  def init_filetype(file_path)
    allowed_exts = %w(pdf doc docx xls xlsx ppt pptx png gif jpg jpeg txt csv)
    pdf_exts = %w(asp aspx php jsp cfm cfml)

    ext = File.extname(file_path).downcase

    if allowed_exts.include?(ext)
      file_type = 1
    elsif ext == "" || pdf_exts.include?(ext) || ext.nil?
      file_type = ".pdf"
    else
      file_type = 2
    end
  end
end