
Pod::Spec.new do |s|
  s.name         = "RNEngineDetails"
  s.version      = "1.0.0"
  s.summary      = "RNEngineDetails"
  s.description  = <<-DESC
                  RNEngineDetails
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/author/RNEngineDetails.git", :tag => "master" }
  s.source_files  = "RNEngineDetails/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
