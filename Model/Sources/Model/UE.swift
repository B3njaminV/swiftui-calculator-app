import Foundation

public struct UE : Identifiable {
    
    public let id: UUID
    public var numero:Int32
    public var name: String
    public var coefficient: Int32
    public var matieres: [Matiere] = []
    
    public init(withId id : UUID, andNumero numero: Int32, andName name: String, andCoefficient coefficient: Int32){
        self.id=id
        self.numero=numero
        self.name=name
        self.coefficient=coefficient
    }
        
    public init(withNumero numero : Int32, andName name: String, andCoefficient coefficient: Int32){
        self.init(withId: UUID(), andNumero: numero, andName: name, andCoefficient: coefficient)
    }
    
    public func loadUE() -> [UE]{
        let formatter = DateFormatter()
        var ues: [UE] = []
        var ue1 = UE(withNumero: 1, andName: "Génie Logiciel", andCoefficient: 6)
        ue1.matieres.append(Matiere(withName: "Processus de développement", andCoefficient: 4, andNote: 10))
        ue1.matieres.append(Matiere(withName: "Programmation Objets", andCoefficient: 9, andNote: 10))
        ues.append(ue1)
        var ue2 = UE(withNumero: 1, andName: "Systèmes et réseaux", andCoefficient: 6)
        ue2.matieres.append(Matiere(withName: "Internet des Objets", andCoefficient: 4, andNote: 10))
        ue2.matieres.append(Matiere(withName: "Services Mobiles", andCoefficient: 9, andNote: 10))
        ues.append(ue2)
        return ues
    }

}
