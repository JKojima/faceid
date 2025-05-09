import Foundation
import Security

// // 保存
// let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
// let result = KeychainService.save(key: "access_token", data: token.data(using: .utf8)!)
// print(result ? "保存成功" : "保存失敗")

// // 読み出し
// if let data = KeychainService.load(key: "access_token"),
//    let token = String(data: data, encoding: .utf8) {
//     print("取得成功: \(token)")
// }

// // 削除
// KeychainService.delete(key: "access_token")

class KeychainService {
    
    static func save(key: String, data: Data) -> Bool {
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecValueData: data
        ] as CFDictionary

        SecItemDelete(query) // 同じキーがあれば削除してから登録

        let status = SecItemAdd(query, nil)
        return status == errSecSuccess
    }

    static func load(key: String) -> Data? {
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecReturnData: kCFBooleanTrue!,
            kSecMatchLimit: kSecMatchLimitOne
        ] as CFDictionary

        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query, &dataTypeRef)

        if status == errSecSuccess {
            return dataTypeRef as? Data
        }

        return nil
    }

    static func delete(key: String) {
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key
        ] as CFDictionary

        SecItemDelete(query)
    }
}