import Foundation

public struct Stub {
    
    public func loadBloc() -> Bloc{
        var blocs: [Bloc] = []
        
        var myues: [UE] = []
        var ue1 = UE(withNumero: 1, andName: "Génie Logiciel", andCoefficient: 6)
        ue1.matieres.append(Matiere(withName: "Processus de développement", andCoefficient: 4, andNote: 10))
        ue1.matieres.append(Matiere(withName: "Programmation Objets", andCoefficient: 9, andNote: 10))
        myues.append(ue1)
        var ue2 = UE(withNumero: 1, andName: "Systèmes et réseaux", andCoefficient: 6)
        ue2.matieres.append(Matiere(withName: "Internet des Objets", andCoefficient: 4, andNote: 10))
        ue2.matieres.append(Matiere(withName: "Services Mobiles", andCoefficient: 9, andNote: 10))
        myues.append(ue2)
        
        bloc = Bloc(, andUes: myues)
        return bloc
    }
    
    public func loadBlocs() -> [Bloc] {
        var blocs: [Bloc] = []
        
        var bloc1 = Bloc(withNumero: 1, withName: "Total", andUes: [
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
}
