Pod::Spec.new do |s|
  s.name         = "ZENPush"
  s.version      = "4.5.0"
  s.summary      = "Front-end APNS support for ZDS"

  s.description  = <<-DESC
  	Internal Zentity SDK for front-end support of ZDS - Module: Push Notifications (push). It supports registration and de-registration of device, reception of classic and silent push notifications, including decryption of the notification content.                          
      DESC

  s.homepage     = "https://confluence.zmok.net/display/ZENCOMP/ZENPush"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenpush.git", :tag => s.version.to_s }

  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.swift_versions = '4.0'
  s.source_files = 'ZENPush/src/*.swift'
  
  s.pod_target_xcconfig = { 
    'SWIFT_VERSION' => '4.0',
    'APPLICATION_EXTENSION_API_ONLY' => 'NO'
  }
  
  s.dependency 'ZENLogger', '~> 1.4'
  s.dependency 'ZNI', '~> 2.1'
  s.dependency 'SwiftLint'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENPush/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
