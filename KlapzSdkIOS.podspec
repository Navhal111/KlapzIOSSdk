Pod::Spec.new do |s|
  s.name         = "KlapzSdkIOS"
  s.version      = "1.0.0"
  s.summary      = "KlapzSDK"
  s.description  = "KlapzSDK IOS"
  s.homepage     = "https://github.com/Navhal111"
  s.license      = "Klap club"
  s.author             = { "author" => "ylight528@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/Navhal111/KlapzIOSSdk.git", :tag => "1.0.0" }
  s.source_files  = "*"
  s.requires_arc = true
s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  #s.dependency "React"
  #s.dependency "others"

end
