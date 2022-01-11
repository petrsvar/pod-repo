Pod::Spec.new do |s|
  s.name         = "ZENLocalize"
  s.version      = "1.5.0"
  s.summary      = "Front-end localization support for ZDS"
  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZENLocalize"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenlocalize-ios.git", :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'
  s.source_files = 'ZENLocalize/src/*.swift'
  s.preserve_path = "ZENLocalize/BuildPhases/generateStringKeys"
  
  s.dependency 'ZENLogger', '~> 1.4'
  s.dependency 'ZNI', '~> 2.1'
  s.dependency 'ZENZip', '~> 1.2'
  s.dependency 'SwiftLint'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENLocalize/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
