Pod::Spec.new do |s|
  s.name         = "ZENSec"
  s.version      = "1.3"
  s.summary      = "Security routines and keychain operations"
  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENSec"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zensec.git", :tag => "1.3" }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'src/**/*.{h,m}'
  s.exclude_files = 'Keychain/'
  s.requires_arc = true
  s.subspec 'no-arc' do |sp|
    sp.source_files = 'src/Keychain/*.{h,m}'
    sp.requires_arc = false
  end
end