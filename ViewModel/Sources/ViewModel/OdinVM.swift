import Foundation
import Model

@available(iOS 13.0, *)
public class OdinVM : ObservableObject {
    
    @Published var blocsVM: [Bloc]
    
    public init(blocs: [Bloc]) {
        self.blocsVM = blocs
    }
}

