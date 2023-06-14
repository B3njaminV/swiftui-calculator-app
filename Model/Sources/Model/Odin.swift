import Foundation

public struct Odin {
    
    let dataManager: DataManager
    public var blocs: [Bloc] = []
    
    public init(withDataManager dataManager: DataManager){
        self.dataManager = dataManager
    }
    
    public mutating func loadBlocs() {
        self.blocs.removeAll()
        for bloc in self.dataManager.loadBlocs() {
            self.blocs.append(bloc)
        }
    }
    
    public func saveBlocs() {
        self.dataManager.save(blocs: self.blocs)
    }
}
