import Foundation

func setDefaults(key: String, value: Any?) {
    UserDefaults.standard.set(value, forKey: key)
}

func getDefaults(for key: String) -> Any? {
    let defaults = UserDefaults.standard.data(forKey: key)
    return defaults
}
