//
//  ButtonView.swift
//  Apple-Framework
//
//  Created by Alby Kennady on 22/06/25.
//

import SwiftUI

struct ButtonView: View {
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
            Text(buttonText)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(textColor)
                .frame(width: 300, height: 50)
                .background(backgroundColor)
                .cornerRadius(10)
    }
}

#Preview {
    ButtonView(buttonText: "Preview text", textColor: Color.white, backgroundColor: Color.red)
}
