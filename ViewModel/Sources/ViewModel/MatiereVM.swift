import Foundation
import Model

@available(iOS 13.0, *)
class MatiereVM : ObservableObject, Identifiable {
    public init(){}

    public init(withModel model: Matiere){
        self.model = model
    }
    
    public var id: UUID { model.id }
    
    @Published var model: Matiere = Matiere(withId: UUID(), andName: "", andCoefficient: 0, andNote: 10.0) {
        didSet {
            if self.name != self.model.name {
                self.name = self.model.name
            }
            if self.model.coefficient != self.coefficient {
                self.model.coefficient = self.coefficient
            }
            if self.model.note != self.note {
                self.model.note = self.note
            }
        }
    }
         
    @Published
    var name: String = "" {
        didSet {
            if self.model.name != self.name {
                self.model.name = self.name
            }
        }
    }
    
    @Published
    var coefficient: Int32 = 0 {
        didSet {
            if self.model.coefficient != self.coefficient {
                self.model.coefficient = self.coefficient
            }
        }
    }
    
    @Published
    var note: Float = 10.0 {
        didSet{
            if self.model.note != self.note {
                self.model.note = self.note
            }
        }
    }
}
