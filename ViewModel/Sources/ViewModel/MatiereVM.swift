import Foundation
import Model

@available(iOS 13.0, *)
public class MatiereVM : ObservableObject, Identifiable {
    
    private var notificationsFuncs: [(MatiereVM) -> ()] = []
    
    private func onNotify(){
        for f in notificationsFuncs{
            f(self)
        }
    }
    
    public func subscribe(_ source: @escaping (MatiereVM) -> ()){
        self.notificationsFuncs.append(source)
    }
    
    public init(){}
    
    public init(withModel model: Matiere){
        self.model = model
    }
    
    private var copy: MatiereVM {
        MatiereVM(withModel: self.model)
    }
    
    public var editedCopy: MatiereVM?
    
    public var id: UUID { model.id }
    
    @Published
    var model: Matiere = Matiere(withId: UUID(), andName: "", andCoefficient: 0, andNote: 10.0) {
        didSet {
            if self.name != self.model.name {
                self.name = self.model.name
            }
            if self.coefficient != self.model.coefficient {
                self.coefficient = self.model.coefficient
            }
            if self.note != self.model.note {
                self.note = self.model.note
            }
            onNotify()
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
    public var coefficient: Int32 = 0 {
        didSet {
            if self.model.coefficient != self.coefficient {
                self.model.coefficient = self.coefficient
            }
        }
    }
    
    @Published
    public var note: Float = 10.0 {
        didSet{
            if self.model.note != self.note {
                self.model.note = self.note
            }
        }
    }
    
    @Published
    var isEditing: Bool = false
    
    func onEditing(){
        editedCopy = self.copy
        isEditing = true
    }
    
    func onEdited(isCancelled: Bool = false){
        if(!isCancelled){
            if let edit = editedCopy {
                self.model = edit.model
            }
        }
        isEditing = false
    }
}
