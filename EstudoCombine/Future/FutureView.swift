//
//  ContentView.swift
//  EstudoCombine
//
//  Created by Alexandre Robaert on 13/10/24.
//

import SwiftUI

struct FutureView: View {
    
    @StateObject var viewModel: FutureViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.message)
        }
        .padding()
        .onAppear {
            self.viewModel.fetch()
        }
    }
}

#Preview {
    FutureView(viewModel: FutureViewModel())
}
