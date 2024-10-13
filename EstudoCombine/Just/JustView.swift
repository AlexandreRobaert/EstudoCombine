//
//  JustView.swift
//  EstudoCombine
//
//  Created by Alexandre Robaert on 13/10/24.
//

import Foundation
import SwiftUI

struct JustView: View {
    
    @StateObject var viewModel: JustViewModel
    
    var body: some View {
        Text(viewModel.text)
    }
}

#Preview {
    JustView(viewModel: JustViewModel())
}
