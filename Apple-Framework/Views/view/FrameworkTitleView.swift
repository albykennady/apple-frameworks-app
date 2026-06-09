//
//  FrameworkTitleView.swift
//  Apple-Framework
//
//  Created by Alby Kennady on 23/06/25.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.frameworks[1])
}
