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
  s.frameworks = 'UIKit'

  s.subspec 'Core' do |ss|
    ss.dependency 'RFKit/Runtime', '>= 1.7'
    ss.dependency 'RFKit/Category/UIDevice'
    ss.dependency 'RFKit/Category/UINavigationController'

    ss.source_files = [
      'RFSegue.{h,m}',
      'RFSegueDelegate.h',
      'RFNavigationPush*.{h,m}'
    ]
    ss.public_header_files = [
      'RFSegue.h',
      'RFSegueDelegate.h',
      'RFNavigationPush*.h'
    ]
  end

  s.subspec 'Present' do |ss|
    ss.dependency 'RFSegue/Core'
    ss.source_files = ['RFPresent*.{h,m}']
    ss.public_header_files = ['RFPresent*.h']
  end

  s.subspec 'Async' do |ss|
    ss.dependency 'RFSegue/Core'
    ss.source_files = ['Async/*.{h,m}']
    ss.public_header_files = ['Async/*.h']
  end

  s.subspec 'Return' do |ss|
    ss.dependency 'RFKit/Runtime', '>= 1.7'
    ss.dependency 'RFKit/Category/UIView'
    ss.dependency 'RFKit/Category/UIResponder'
    ss.dependency 'RFSegue/Core'

    ss.source_files = ['Return/*.{h,m}']
    ss.public_header_files = ['Return/*.h']
  end

  s.pod_target_xcconfig = {
    # These config should only exsists in develop branch.
    'WARNING_CFLAGS'=> [
      '-Weverything',                   # Enable all possiable as we are developing a library.
      '-Wno-gnu-statement-expression',  # Allow ?: expression.
      '-Wno-gnu-conditional-omitted-operand',
      '-Wno-auto-import',               # Still needs old #import for backward compatibility. 
      '-Wno-sign-conversion',
      '-Wno-sign-compare',
      '-Wno-double-promotion',
      '-Wno-objc-missing-property-synthesis'
    ].join(' ')
  }
end
