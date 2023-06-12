import Foundation
import Model

@available(iOS 13.0, *)
class BlocVM : ObservableObject, Identifiable, Equatable {
    public init(model: Bloc) {
        self.model = model
    }
    
    public var id: UUID { model.id }
    
    @Published
    var model: Bloc = Bloc(withId: UUID(), withName: "", andUes: []) {
        didSet {
            if self.name != self.model.name {
                self.name = self.model.name
            }
            if !self.model.ues.compare(to: self.uesVM.map({$0.model})){
                self.uesVM = self.model.ues.map({UEVM(withModel: $0)})
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

    @Published var uesVM: [UEVM] = [] {
       didSet {
           let modelUE = self.uesVM.map({$0.model})
           if !self.model.ues.compare(to: modelUE){
               self.model.ues = uesVM.map({$0.model})
           }
       }
    }

    static func == (lhs: BlocVM, rhs: BlocVM) -> Bool {
       lhs.id == rhs.id
    }
}
