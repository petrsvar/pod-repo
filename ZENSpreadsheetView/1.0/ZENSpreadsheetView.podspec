Pod::Spec.new do |s|
  s.name         = "ZENSpreadsheetView"
  s.version      = "1.0"
  s.summary      = "A light weight, easy-to-use spreadsheet-like view."
  s.homepage     = "https://stash.zmok.net/projects/ZENCOMP/repos/zenspreadsheetview"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Dominik Plisek" => "dominik.plisek@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenspreadsheetview.git", :tag => "1.0" }
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'ZENSpreadsheetView/*.{h,m}'
  s.framework    = 'QuartzCore'
end
