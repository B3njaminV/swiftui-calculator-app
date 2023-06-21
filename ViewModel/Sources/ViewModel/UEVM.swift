import Foundation
import Model

@available(iOS 13.0, *)
public class UEVM : ObservableObject, Identifiable, Equatable {
    
    /*
    private var notificationsFuncs: [(UEVM) -> ()] = []
    
    private func onNotify(){
        for f in notificationsFuncs{
            f(self)
        }
    }
    
    public func subscribe(_ source: @escaping (UEVM) -> ()){
        self.notificationsFuncs.append(source)
    }
    */
    
    func onNotified(source: MatiereVM){
        // Mettre à jour le model si on wrappe un model
        // on écoute si le model a changés
        if let index = self.model.matieres.firstIndex(where: {$0 == source.model}){
            self.model.matieres[index] = source.model
        }
        // Notifier la vue
        self.objectWillChange.send()
    }
    
    public init(){}
    
    public init(withModel model: UE){
        self.model = model
    }
    
    private var copy: UEVM {
        UEVM(withModel: self.model)
    }
    
    public var editedCopy: UEVM?
    
    public var id: UUID { model.id }
    
    @Published var model: UE = UE(withId: UUID(), andNumero: 1, andName: "", andCoefficient: 0) {
        didSet {
            if self.model.numero != self.numero {
                self.model.numero = self.numero
            }
            if self.name != self.model.name {
                self.name = self.model.name
            }
            if self.model.coefficient != self.coefficient {
                self.model.coefficient = self.coefficient
            }
            if self.moyenne != self.model.moyenne {
                self.moyenne = self.model.moyenne
            }
            if !self.model.matieres.compare(to: self.matieresVM.map({$0.model})){
                self.matieresVM = self.model.matieres.map({MatiereVM(withModel: $0)})
//                self.matieresVM.forEach({$0.subscribe(self.onNotified(source:))})
            }
//            onNotify()
        }
    }
    
    @Published
    public var name: String = "" {
        didSet {
            if self.model.name != self.name {
                self.model.name = self.name
            }
        }
    }
    
    @Published
    public var numero: Int32 = 0 {
        didSet {
            if self.model.numero != self.numero {
                self.model.numero = self.numero
            }
        }
    }
    
    @Published
    public var coefficient: Int32 = 0 {
        didSet {
            if self.model.coefficient != self.coefficient {
                self.model.coefficient = self.coefficient
            }
        }
    }
    
    @Published
    public var moyenne: Float = 0 {
        didSet {
            if self.moyenne != self.model.moyenne {
                self.moyenne = self.model.moyenne
            }
        }
    }
    
    @Published
    public var matieresVM: [MatiereVM] = [] {
        didSet {
            let modelMatieres = self.matieresVM.map({$0.model})
            if !self.model.matieres.compare(to: modelMatieres){
                self.model.matieres = matieresVM.map({$0.model})
            }
        }
    }
    
    @Published
    public var isEditing: Bool = false
    
    public func onEditing(){
        editedCopy = self.copy
        isEditing = true
    }
    
    public func onEdited(isCancelled: Bool = false){
        if(!isCancelled) {
            if let edit = editedCopy {
                self.model = edit.model
            }
        }
        isEditing = false
    }
    
    public static func == (lhs: UEVM, rhs: UEVM) -> Bool {
        lhs.id == rhs.id
    }
}
