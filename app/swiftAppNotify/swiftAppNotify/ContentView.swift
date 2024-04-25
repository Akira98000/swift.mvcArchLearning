//
//  ContentView.swift
//  swiftAppNotify
//
//  Created by Akira Santhakumaran on 4/25/24.
//

import SwiftUI

struct AkiBankContainerRepresentable: UIViewRepresentable {
    let model: AkiBankModel
    
    func makeUIView(context: Context) -> AkiBankContainerView {
        return AkiBankContainerView(model: model)
    }
    
    func updateUIView(_ uiView: AkiBankContainerView, context: Context) {}
}


struct ContentView: View {
    let model = AkiBankModel.exampleModel()
    
    var body: some View {
        VStack {
            AkiBankContainerRepresentable(model: model)
                .padding(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
                )
                .padding(.horizontal, 20)
        }
        .navigationTitle("AkiBank")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.black)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
