Pod::Spec.new do |s|
  s.name         = "ZENAuthNext"
  s.version      = "1.0"
  s.summary      = "Authentization and login SDK compatible with GW 2.0"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENAuthNext"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenauthnext.git", :tag => "1.0" }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.swift_version = '4.0'
  s.source_files = 'src/**/*.swift'
  s.dependency 'ZNI', '~> 2.1'
  s.dependency 'ZENLogger', '~> 1.2'
  s.dependency 'ZENSec', '~> 1.1'
end