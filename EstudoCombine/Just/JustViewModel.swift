//
//  JustViewModel.swift
//  EstudoCombine
//
//  Created by Alexandre Robaert on 13/10/24.
//

import Foundation
import Combine

final class JustViewModel: ObservableObject {
    
    private var cancellable: AnyCancellable?
    @Published var text: String = "Mensagem Inicial"
    
    var message = "Outra Mensagem"
    
    init() {
        just()
    }
    
    private func just() {
        cancellable = Just(message).assign(to: \.text, on: self)
    }
}
