import Foundation

@objc public class FaceID: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
