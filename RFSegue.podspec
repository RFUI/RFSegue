Pod::Spec.new do |s|
  s.name             = 'RFSegue'
  s.version          = '3.2.0'
  s.summary          = 'Missing features for UIStoryboardSegue.'

  s.description      = <<-DESC
v3 is outdated and abandoned.
DESC

  s.homepage         = 'https://github.com/RFUI/RFSegue'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BB9z' => 'bb9z@me.com' }
  s.source           = { :git => 'https://github.com/RFUI/RFSegue.git', :tag => s.version.to_s }

  s.ios.deployment_target = '5.0'
  s.tvos.deployment_target = '9.0'

  s.requires_arc = true
  s.source_files = ['*.{h,m}', 'Return/*.{h,m}']
  s.public_header_files = ['*.h', 'Return/*.h']
  s.frameworks = 'UIKit'

  s.dependency 'RFKit/Runtime'
  s.dependency 'RFKit/Category/UIDevice'
  s.dependency 'RFKit/Category/UINavigationController'
  s.dependency 'RFKit/Category/UIResponder'
  s.dependency 'RFKit/Category/UIView'
end
