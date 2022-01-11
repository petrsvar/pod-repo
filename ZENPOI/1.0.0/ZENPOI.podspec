Pod::Spec.new do |s|
  s.name         = "ZENPOI"
  s.version      = "1.0.0"
  s.summary      = "Point Of Interest"

  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZENPOI"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Ondrej Hanslik" => "ondrej.hanslik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenpoi.git", :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.platform     = :ios, '12.0'
  s.ios.deployment_target = '9.0'

  s.source_files = 'ZENPOI/src/**/*'
  s.dependency 'ZNI', '2.3'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENPOI/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
