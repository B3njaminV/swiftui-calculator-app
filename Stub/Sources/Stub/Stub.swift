import Foundation
import Model

public struct Stub : DataManager {
    
    public init(){}
    
    public func loadBlocs() -> [Bloc] {
        var blocs: [Bloc] = []
        
        var bloc1 = Bloc(withNumero: 1, withName: "Total", andUes: [
            UE(withNumero:1, andName: "Génie logiciel", andCoefficient: 6, andMatiere: [
                Matiere(withName:  "Processus de développement", andCoefficient: 4, andNote: 19.04),
                Matiere(withName:  "Programmation objets", andCoefficient: 9, andNote: 10.00),
                Matiere(withName:  "Qualité de développement", andCoefficient: 5, andNote: 10.00),
                Matiere(withName:  "Remise à niveau Objets", andCoefficient: 4, andNote: 10.00),
            ]),
            UE(withNumero: 2, andName: "Systèmes et réseaux", andCoefficient: 6, andMatiere: [
                Matiere(withName: "Internet des Objets", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Réseaux", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Services Mobiles", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Système", andCoefficient: 5, andNote: 10.00)
            ])
        ])
        
        var bloc2 = Bloc(withNumero: 1, withName: "Projet / Stage", andUes: [
            UE(withNumero:1, andName: "Projet", andCoefficient: 6, andMatiere: [
                Matiere(withName:  "Projet", andCoefficient: 4, andNote: 10.00)
            ]),
            UE(withNumero: 2, andName: "Stage", andCoefficient: 6, andMatiere: [
                Matiere(withName: "Stage", andCoefficient: 4, andNote: 10.00)
            ])
        ])
        
        blocs.append(contentsOf: [bloc1, bloc2])
        
        return blocs
    }
    
    public func save(blocs: [Bloc]) {
        let bloc : Bloc
    }
}
