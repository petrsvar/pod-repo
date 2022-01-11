Pod::Spec.new do |s|
    s.name = "ZENRise"
    s.version = "1.0.1"
    s.summary = "Reporting component for automatic issue tracking"
    s.homepage = "https://confluence.zentity.com/display/ZENCOMP/ZENRise"
    s.license = { :type => 'ZEN 1.0', :file => 'LICENSE'}
    s.author = { "Ondrej Vasicek" => "ondrej.vasicek@zentity.com" }
    s.source = { :git => "https://stash.zmok.net/scm/zencomp/zenrise.git", :tag => "1.0.1" }
    s.platform = :ios, '9.0'
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
    s.requires_arc = true
    s.source_files = 'ZENRise/ZENRise/**/*.{swift,h,m}'
    s.frameworks = 'UIKit'
end