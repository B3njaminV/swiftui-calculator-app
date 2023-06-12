import Foundation

public struct Stub {
    
    public func loadBloc() -> Bloc{
        var bloc: Bloc
        
        let formatter = DateFormatter()
        var myues: [UE] = []
        var ue1 = UE(withNumero: 1, andName: "Génie Logiciel", andCoefficient: 6)
        ue1.matieres.append(Matiere(withName: "Processus de développement", andCoefficient: 4, andNote: 10))
        ue1.matieres.append(Matiere(withName: "Programmation Objets", andCoefficient: 9, andNote: 10))
        myues.append(ue1)
        var ue2 = UE(withNumero: 1, andName: "Systèmes et réseaux", andCoefficient: 6)
        ue2.matieres.append(Matiere(withName: "Internet des Objets", andCoefficient: 4, andNote: 10))
        ue2.matieres.append(Matiere(withName: "Services Mobiles", andCoefficient: 9, andNote: 10))
        myues.append(ue2)
        
        bloc = Bloc(withNumero: 1, withName: "Total", andUes: myues)
        return bloc
    }
}
