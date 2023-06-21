import Foundation
import Model

public struct Stub : DataManager {
    
    public init(){}
    
    public func loadBlocs() -> [Bloc] {
        var blocs: [Bloc] = []
        
        let bloc1 = Bloc(withName: "Total", andUes: [
            UE(withNumero:1, andName: "Génie logiciel", andCoefficient: 6, andMatiere: [
                Matiere(withName:  "Processus de développement", andCoefficient: 4, andNote: 10.00),
                Matiere(withName:  "Programmation objets", andCoefficient: 9, andNote: 10.00),
                Matiere(withName:  "Qualité de développement", andCoefficient: 5, andNote: 10.00),
                Matiere(withName:  "Remise à niveau Objets", andCoefficient: 4, andNote: 10.00),
            ]),
            UE(withNumero: 2, andName: "Systèmes et réseaux", andCoefficient: 6, andMatiere: [
                Matiere(withName: "Internet des Objets", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Réseaux", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Services Mobiles", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Système", andCoefficient: 5, andNote: 10.00)
            ]),
            UE(withNumero: 3, andName: "Insertion Professionnelle", andCoefficient: 6, andMatiere: [
                Matiere(withName: "Anglais", andCoefficient: 5, andNote: 10.00),
                Matiere(withName: "Economie", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Gestion", andCoefficient: 3, andNote: 10.00),
                Matiere(withName: "Communication", andCoefficient: 4, andNote: 10.00)
            ]),
            UE(withNumero: 4, andName: "Technologies Mobiles 1", andCoefficient: 9, andMatiere: [
                Matiere(withName: "Android", andCoefficient: 6, andNote: 10.00),
                Matiere(withName: "Architecture de projets C# .NET (1)", andCoefficient: 5, andNote: 10.00),
                Matiere(withName: "C++", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Swift", andCoefficient: 5, andNote: 10.00)
            ]),
            UE(withNumero: 5, andName: "Technologies Mobiles 2", andCoefficient: 9, andMatiere: [
                Matiere(withName: "Architecture de projets C# .NET (2)", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "Client/Serveur", andCoefficient: 4, andNote: 10.00),
                Matiere(withName: "iOS", andCoefficient: 5, andNote: 10.00),
                Matiere(withName: "Multiplateformes", andCoefficient: 3, andNote: 10.00),
                Matiere(withName: "QT Quick", andCoefficient: 5, andNote: 10.00),
                Matiere(withName: "Xamarin", andCoefficient: 5, andNote: 10.00)
            ])
        ])
        
        let bloc2 = Bloc(withName: "Projet / Stage", andUes: [
            UE(withNumero:6, andName: "Projet", andCoefficient: 9, andMatiere: [
                Matiere(withName:  "Projet", andCoefficient: 1, andNote: 10.00)
            ]),
            UE(withNumero: 7, andName: "Stage", andCoefficient: 15, andMatiere: [
                Matiere(withName: "Stage", andCoefficient: 1, andNote: 10.00)
            ])
        ])
        
        blocs.append(contentsOf: [bloc1, bloc2])

        return blocs
    }
    
    public func save(blocs: [Bloc]) {
    }
}
