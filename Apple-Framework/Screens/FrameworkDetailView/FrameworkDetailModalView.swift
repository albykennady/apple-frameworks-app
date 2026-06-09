//
//  FrameworkDetailModalView.swift
//  Apple-Framework
//
//  Created by Alby Kennady on 22/06/25.
//

import SwiftUI

struct FrameworkDetailModalView: View {
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    let framework: Framework
    
    var body: some View {
        ZStack{
            VStack{
                
                XDismissButton(isShowingDetailView: $isShowingDetailView)
                Spacer()
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .font(.system(size: 18,weight: .regular))
                    .multilineTextAlignment(.leading)

                Spacer()
                Button{
                    isShowingSafariView = true
                }label: {
                    ButtonView(buttonText: "Learn More", textColor: Color.white, backgroundColor: .red)
                }.fullScreenCover(isPresented: $isShowingSafariView) {
                    SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.harleydavidson.com")!)
                }
            }.padding()
            
                
            }
    }
}

#Preview {
    FrameworkDetailModalView(isShowingDetailView: .constant(false), framework: MockData.frameworks[4])
}
