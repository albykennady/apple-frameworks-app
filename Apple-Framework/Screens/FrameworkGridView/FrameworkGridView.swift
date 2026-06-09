//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Alby Kennady on 21/06/25.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailModalView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework!)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
