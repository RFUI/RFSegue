Pod::Spec.new do |s|
  s.name             = 'RFSegue'
  s.version          = '4.0.0'
  s.summary          = 'Missing features for UIStoryboardSegue.'

  s.description      = <<-DESC
Safter push segue, silent fail when the navigation controller is nil.
Perform an segue asynchronous.
DESC

  s.homepage         = 'https://github.com/RFUI/RFSegue'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BB9z' => 'bb9z@me.com' }
  s.source           = {
    :git => 'https://github.com/RFUI/RFSegue.git',
    :branch => 'develop'
  }

  s.ios.deployment_target = '6.0'
  s.tvos.deployment_target = '9.0'

  s.requires_arc = true
  s.source_files = ['*.{h,m}', 'Async/*.{h,m}', 'Return/*.{h,m}']
  s.public_header_files = ['*.h', 'Async/*.h', 'Return/*.h']
  s.frameworks = 'UIKit'

  s.dependency 'RFKit/Runtime', '>=1.7'
  s.dependency 'RFKit/Category/UIDevice'
  s.dependency 'RFKit/Category/UINavigationController'
  s.dependency 'RFKit/Category/UIResponder'
  s.dependency 'RFKit/Category/UIView'
end
