Pod::Spec.new do |s|
    s.name              = 'MandrakeKit'
    s.version           = '0.1.0.beta.1'
    s.summary           = 'BearyChat SDK for iOS.'
    s.homepage          = 'http://github.com/bearyinnovative/MandrakeKit'
    s.author            = { 'BearyInnovative' => 'app@bearyinnovative.com' }
    s.license           = "MIT"

    s.platform          = :ios
    s.requires_arc      = true
    s.source            = { :http => 'http://7xnwdv.com1.z0.glb.clouddn.com/06/MandrakeKit.zip' }
    s.swift_version     = '4.0'
    s.ios.deployment_target = '9.0'

    s.vendored_frameworks = '*.framework'
    s.resources = ['MandrakeKit.framework/*.momd', 'MandrakeKit.framework/*.car', 'MandrakeKit.framework/*.nib', 'MandrakeKit.framework/*.storyboardc', 'MandrakeKit.framework/*.lproj']
    s.preserve_paths = 'MessagePack.framework/CommonDigest/*', 'BCNetwork.framework/CommonDigest/*'
    s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/MandrakeKit/MessagePack.framework/CommonDigest/ $(PODS_ROOT)/MandrakeKit/BCNetwork.framework/CommonDigest/'}

    s.ios.dependencies = 'AgoraRtcEngine_iOS', 'Alamofire', 'CocoaAsyncSocket','ListDiff',['Eureka', '= 4.0.1'],['TanImagePicker', '= 0.2.1'],'R.swift','TZImagePickerController',"KingfisherWebP",'AVOSCloud','Kingfisher','ImageViewer','MDRadialProgress','RxSwift','RxCocoa','Action','Result','AlamofireNetworkActivityIndicator','Tactile','RSKImageCropper','PKHUD','Toucan','SDCAlertView','1PasswordExtension', 'NSLogger', 'XCGLogger', 'Differ', 'Zip'
end
