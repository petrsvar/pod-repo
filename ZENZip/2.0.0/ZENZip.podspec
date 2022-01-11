Pod::Spec.new do |s|
  s.name         = "ZENZip"
  s.version      = "2.0.0"
  s.summary      = "Micro ZIP Archive library."

  s.description  = <<-DESC
  	Minimal implementation for reading and writing ZIP archives.
      DESC

  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENZip"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Ondrej Hanslik" => "ondrej.hanslik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenzip-ios.git", :tag => s.version.to_s }
 
  s.platform     = :ios, '12.4'
  s.ios.deployment_target = '9.0'
  s.swift_versions = ['5.0', '5.1', '5.2']
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
  s.requires_arc = true

  s.source_files = 'ZENZip/src/**/*.swift'

  s.dependency 'SwiftLint'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENZip/Tests/**/*'
    test_spec.resource = 'ZENZip/Tests/test.zip'
    test_spec.pod_target_xcconfig = {
        "SWIFT_OBJC_BRIDGING_HEADER" => "$(PODS_TARGET_SRCROOT)/ZENZip/Tests/ZENZip_Tests-Bridging-Header.h"
    }

    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end

end
