Pod::Spec.new do |s|
  s.name         = "ZNI"
  s.version      = "2.5.0"
  s.summary      = "Networking Integration Components."

  s.description  = <<-DESC
      Zentity Networking Integration is an integration layer between Zentity SDKs requiring network communication and specific networking libraries. This library is required by multiple internal SDKs.
      DESC

  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZNI"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zni.git", :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.platform     = :ios, '12.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

  s.source_files = 'ZNI/src/**/*'

  s.dependency 'ZENLogger', '~> 1.1'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZNI/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
