Pod::Spec.new do |s|
    s.name              = 'MandrakeKit'
    s.version           = '0.1.0.beta.1'
    s.summary           = 'A really cool SDK that logs stuff.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Name' => 'sdk@example.com' }
    # s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => 'http://7xnwdv.com1.z0.glb.clouddn.com/01/MandrakeKit.zip' }

    s.swift_version = '4.0'
    s.ios.deployment_target = '9.0'
    s.vendored_frameworks = '*.framework'
    s.requires_arc = true
    s.resources = ['MandrakeKit.framework/*.momd', 'MandrakeKit.framework/*.car', 'MandrakeKit.framework/*.nib', 'MandrakeKit.framework/*.storyboardc', 'MandrakeKit.framework/*.lproj']

    s.preserve_paths = 'MessagePack.framework/CommonDigest/*', 'BCNetwork.framework/CommonDigest/*'
    s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/MandrakeKit/MessagePack.framework/CommonDigest/ $(PODS_ROOT)/MandrakeKit/BCNetwork.framework/CommonDigest/'}

    s.ios.dependencies = 'AgoraRtcEngine_iOS', 'Alamofire', 'CocoaAsyncSocket','ListDiff','Eureka',['TanImagePicker', '= 0.2.1'],'R.swift','TZImagePickerController',"KingfisherWebP",'AVOSCloud','Kingfisher','ImageViewer','MDRadialProgress','RxSwift','RxCocoa','Action','Result','AlamofireNetworkActivityIndicator','Tactile','RSKImageCropper','PKHUD','Toucan','SDCAlertView','1PasswordExtension', 'NSLogger', 'XCGLogger', 'Differ', 'Zip'
end