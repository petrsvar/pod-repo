Pod::Spec.new do |s|
  s.name         = "ZENSec"
  s.version      = "1.5.1"
  s.summary      = "Security routines and keychain operations."

  s.description  = <<-DESC
  	Library with basic security routines. Keychain operations, key generations, ciphering and deciphering.
      DESC

  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENSec"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zensec.git", :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.compiler_flags = '-ObjC'
  s.platform     = :ios, '12.0'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.xcconfig = {
    'CLANG_ANALYZER_DEADCODE_DEADSTORES' => 'NO'
  }

  s.source_files = 'ZENSec/src/**/*.{h,m}'
  s.exclude_files = 'Keychain/'

  s.subspec 'no-arc' do |sp|
    sp.source_files = 'ZENSec/src/Keychain/*.{h,m}'
    sp.requires_arc = false
  end

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENSec/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
