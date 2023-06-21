import Foundation

public struct UE : Identifiable, Equatable {
    
    public let id: UUID
    public var numero:Int32
    public var name: String
    public var coefficient: Int32
    public var matieres: [Matiere] = []
    public var moyenne: Float = 4
    
    public init(withId id : UUID, andNumero numero: Int32, andName name: String, andCoefficient coefficient: Int32, andMatiere matieres: [Matiere]){
        self.id=id
        self.numero=numero
        self.name=name
        self.coefficient=coefficient
        self.matieres=matieres
    }
    
    public init(withNumero numero: Int32, andName name: String, andCoefficient coefficient: Int32, andMatiere matieres: [Matiere]){
        self.init(withId: UUID(), andNumero: numero, andName: name, andCoefficient: coefficient, andMatiere: [])
    }
    
    public init(withId id : UUID, andNumero numero: Int32, andName name: String, andCoefficient coefficient: Int32){
        self.init(withId: UUID(), andNumero: numero, andName: name, andCoefficient: coefficient, andMatiere: [])
    }
    
    public init(withNumero numero : Int32, andName name: String, andCoefficient coefficient: Int32){
        self.init(withId: UUID(), andNumero: numero, andName: name, andCoefficient: coefficient)
    }
    
    public mutating func addMatiere(matiere: Matiere) -> Void {
        matieres.append(matiere)
    }
    
    public mutating func addManyMatiere(matieres: Matiere...) -> Void {
        self.matieres.append(contentsOf: matieres)
    }
    
    public static func == (lhs: UE, rhs: UE) -> Bool {
        return lhs.id == rhs.id
    }
    
}
