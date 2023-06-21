import Foundation
import Model

@available(iOS 13.0, *)
public class OdinVM : ObservableObject {
    
    @Published public var blocsVM: [BlocVM] = []
    
    public init(withBlocs blocs: [Bloc]) {
        self.blocsVM = blocs.map({BlocVM(withModel: $0)})
    }
    
}

