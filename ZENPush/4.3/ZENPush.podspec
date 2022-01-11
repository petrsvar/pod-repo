Pod::Spec.new do |s|
  s.name         = "ZENPush"
  s.version      = "4.3"
  s.summary      = "Front-end APNS support for ZDS"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENPush"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenpush.git", :tag => "4.3" }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 
    'SWIFT_VERSION' => '4.0',
    'APPLICATION_EXTENSION_API_ONLY' => 'NO'
  }
  s.requires_arc = true
  s.source_files = 'src/*.swift'
  s.dependency 'ZENLogger', '~> 1.1'
  s.dependency 'ZNI', '~> 2.1'
end
