import Foundation

public struct Bloc : Identifiable, Equatable {
    
    public let id: UUID
    public var name: String
    public var ues: [UE] = []
    
    public init(withId id : UUID, withName name : String, andUes ues: [UE]){
        self.id=id
        self.name=name
        self.ues=ues
    }
        
    public init(withNumero numero : Int32, withName name : String, andUes ues: [UE]){
        self.init(withId: UUID(), withName: name, andUes: ues)
    }
    
    public static func == (lhs: Bloc, rhs: Bloc) -> Bool {
            return lhs.id == rhs.id
    }
}

