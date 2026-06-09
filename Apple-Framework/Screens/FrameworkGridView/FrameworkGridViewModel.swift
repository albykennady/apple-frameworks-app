//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Alby Kennady on 22/06/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework? {
        didSet{isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
