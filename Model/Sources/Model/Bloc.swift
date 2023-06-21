import Foundation

public struct Bloc : Identifiable, Equatable {
    
    public let id: UUID
    public var name: String
    public var ues: [UE]
    public var moyenne: Float {
        var allMoy : Float = 0.0
        var allCoef: Float = 0.0
        for ue in ues {
            allMoy = allMoy + (ue.moyenne * Float(ue.coefficient))
            allCoef = allCoef + Float(ue.coefficient)
        }
        return allMoy / allCoef
    }
    
    public init(withId id : UUID, withName name : String, andUes ues: [UE]){
        self.id=id
        self.name=name
        self.ues=ues
    }
    
    public init(withName name : String, andUes ues: [UE]){
        self.init(withId: UUID(), withName: name, andUes: ues)
    }
    
    public static func == (lhs: Bloc, rhs: Bloc) -> Bool {
        return lhs.id == rhs.id
    }
}

