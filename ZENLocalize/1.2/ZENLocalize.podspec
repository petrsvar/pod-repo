Pod::Spec.new do |s|
  s.name         = "ZENLocalize"
  s.version      = "1.2"
  s.summary      = "Front-end localization support for ZDS"
  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZENLocalize"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenlocalize-ios.git", :tag => "1.2" }
  s.platform     = :ios, '12.2'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  s.requires_arc = true
  s.source_files = 'src/*.swift'
  s.dependency 'ZENLogger', '~> 1.3.1'
  s.dependency 'ZNI', '~> 2.1'
  s.dependency 'ZENZip', '~> 1.2'
end
