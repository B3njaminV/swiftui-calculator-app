import Foundation
import Model

@available(iOS 13.0, *)
public class BlocVM : ObservableObject, Identifiable, Equatable {
    
    func onNotified(source: UEVM){
        // 1 on met à jour le model
        // ici y'en a pas
        // 2 on met à jour la vue
        self.objectWillChange.send()
    }
    
    public init(withModel model: Bloc) {
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
                //                self.uesVM.forEach({$0.subscribe(self.onNotified(source:))})
            }
            if self.moyenne != self.model.moyenne {
                self.moyenne = self.model.moyenne
            }
        }
    }
    
    @Published
    public var name: String = "" {
        didSet {
            if self.name != self.model.name {
                self.name = self.model.name
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
    public var uesVM: [UEVM] = [] {
        didSet {
            let modelUE = self.uesVM.map({$0.model})
            if !self.model.ues.compare(to: modelUE){
                self.model.ues = uesVM.map({$0.model})
            }
        }
    }
    
    
    public static func == (lhs: BlocVM, rhs: BlocVM) -> Bool {
        lhs.id == rhs.id
    }
}
