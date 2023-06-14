import Foundation

public protocol DataManager {
    func loadBlocs() -> [Bloc]
    func save(blocs: [Bloc])
}
