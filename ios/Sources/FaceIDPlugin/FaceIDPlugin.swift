import Foundation
import Capacitor
import LocalAuthentication
import Security

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(FaceIDPlugin)
public class FaceIDPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "FaceIDPlugin"
    public let jsName = "FaceID"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "authenticate", returnType: CAPPluginReturnPromise)
    ]

    @objc func authenticate(_ call: CAPPluginCall) {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "本人確認をお願いします。"

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                DispatchQueue.main.async {
                    if success {
                        print("認証成功！🎉")
                        call.resolve()
                    } else {
                        print("認証失敗…: \(authenticationError?.localizedDescription ?? "不明なエラー")")
                        call.reject()
                    }
                }
            }
        } else {
            print("Face IDが使えない（設定されてない or ハード非対応）")
            call.reject()
        }
    }
}



