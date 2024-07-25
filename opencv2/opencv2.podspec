Pod::Spec.new do |spec|
    spec.name                   = "opencv2"
    spec.version                = "4.8.0"
    spec.authors                = { "Bijin Pradhan" => "bijin.pradhan.contractor@pepsico.com" }
    spec.license                = { :type => "MIT"}
    spec.homepage               = "https://github.com/opencv/opencv"
    spec.source                 = { :git => 'https://github.com/opencv/opencv.git',
                                    :tag => spec.version.to_s }
    spec.summary                = "OpenCV Mobile C/C++ Pod"
    spec.platform               = :ios, "14.0"
    spec.vendored_frameworks    = "opencv2.xcframework"
    spec.source_files           = "opencv2.xcframework/*/Versions/A/Headers/*.h"
    spec.description            = "A pod for OpenCV"
    spec.library                = "c++"
    spec.pod_target_xcconfig    = {
        "OTHER_CPLUSPLUSFLAGS" => "-fvisibility=hidden -fvisibility-inlines-hidden",
    }
end
