//
//  ContentViewModel.swift
//  EstudoCombine
//
//  Created by Alexandre Robaert on 13/10/24.
//

import Foundation
import Combine

class FutureViewModel: ObservableObject {
    
    @Published
    var message: String = ""
    
    private var cancellables: Set<AnyCancellable> = []
    
    func fetch() {
        fetchMessage()
            .sink { result in
                switch result {
                case .finished:
                    break
                case .failure(let error):
                    self.message = error.localizedDescription
                }
            } receiveValue: { message in
                self.message = message
            }
            .store(in: &cancellables)
    }
    
    private func fetchMessage() -> Future<String, Error> {
        
        return Future { promise in
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
                let result = Bool.random()
                if result {
                    promise(.success("Busca feita com sucesso!"))
                } else {
                    promise(.failure(NSError(domain: "Mensagem de Erro", code: 500)))
                }
            }
        }
    }
}
