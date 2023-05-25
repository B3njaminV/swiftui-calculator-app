import Foundation

public struct Matiere : Identifiable {
    
    public let id: UUID
    public var name: String
    public var coefficient: Int32
    public var note: Float
    
    public init(withId id : UUID, andName name: String, andCoefficient coefficient: Int32, andNote note: Float){
            self.id=id
            self.name=name
            self.coefficient=coefficient
            self.note=note
    }
    
    public init(withName name: String, andCoefficient coefficient: Int32, andNote note: Float){
        self.init(withId: UUID(), andName: name, andCoefficient: coefficient, andNote: note)
    }
    
}
